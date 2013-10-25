require 'inject_or'

describe Array do

  context 'Writing own inject method' do

    let(:array1) { [1, 2, 4] }
    let(:array2) { [16, 4, 2] }
    let(:array3) { ['h', 'e', 'l', 'l', 'o']}

    it 'Can add up an array passed to it' do
      expect(array1.new_inject{|memo, num| memo + num}).to eq 7
    end

    it 'Can multiply an array passed to it by each element in the array' do
      expect(array1.new_inject{|memo, num| memo * num}).to eq 8
    end

    it 'Can divide an array passed to it by each element of the array' do
      expect(array2.new_inject{|memo, num| memo / num}).to eq 2
    end

    it 'Can turn an array of strings into a single string' do
      expect(array3.new_inject{|memo, string| memo + string}).to eq 'hello'
    end

  end

end