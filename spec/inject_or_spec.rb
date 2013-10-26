require 'inject_or'



describe Array do



  let(:array1) { [1, 2, 4] }
  let(:array2) { [16, 4, 2] }
  let(:array3) { %w{ h e l l o } }
  let(:array4) { [0, 1, 2, 3, 4] }
  let(:array5) { %w{ cat sheep bear } }
  let(:array6) { [5, 4, 3] }



  context 'Testing own inject method' do



    it 'can add up an array passed to it' do
      expect(array1.new_inject{|memo, num| memo + num}).to eq 7
    end

    it 'can multiply an array passed to it by each element in the array' do
      expect(array1.new_inject{|memo, num| memo * num}).to eq 8
    end

    it 'can divide an array passed to it by each element of the array' do
      expect(array2.new_inject{|memo, num| memo / num}).to eq 2
    end

    it 'can turn an array of strings into a single string' do
      expect(array3.new_inject{|memo, string| memo + string}).to eq 'hello'
    end

    it 'will return zero if it attempts to multiply by zero' do
      expect(array4.new_inject{|memo, num| memo * num}).to eq 0
    end

    it 'will return zero if given an initial value of zero' do
      expect(array4.new_inject(0){|memo, num| memo * num}).to eq 0
    end

    it 'will correctly add the whole array if passed same argument as initial value' do
      expect(array6.new_inject(5){|memo, num| memo + num}).to eq 17
    end

    it 'will multiply by a power of 5 if given an initial value of 5' do
      expect(array1.new_inject(5){|memo, num| memo * num}).to eq 40
    end

    it 'will multiply by a power of 5 with initial value of 5 on array without 1 at begining' do
      expect(array2.new_inject(5){|memo, num| memo * num}).to eq 640
    end

    it 'will correctly multiply the whole array by initial value if passed same argument as initial value' do
      expect(array6.new_inject(5){|memo, num| memo * num}).to eq 300
    end

    it 'can find the longest word in an array' do
      expect(array5.new_inject do |memo, word| 
        memo.length > word.length ? memo : word
      end).to eq 'sheep'
    end

    it "doesn't make rspec explode when actually overwriting inject" do
    end


  end



  context 'Testing original inject method' do



    it 'can add up an array passed to it' do
      expect(array1.inject{|memo, num| memo + num}).to eq 7
    end

    it 'can multiply an array passed to it by each element in the array' do
      expect(array1.inject{|memo, num| memo * num}).to eq 8
    end

    it 'can divide an array passed to it by each element of the array' do
      expect(array2.inject{|memo, num| memo / num}).to eq 2
    end

    it 'can turn an array of strings into a single string' do
      expect(array3.inject{|memo, string| memo + string}).to eq 'hello'
    end

    it 'will return zero if it attempts to multiply by zero' do
      expect(array4.inject{|memo, num| memo * num}).to eq 0
    end

    it 'will return zero if given an initial value of zero' do
      expect(array4.inject(0){|memo, num| memo * num}).to eq 0
    end

    it 'will correctly add the whole array if passed same argument as initial value' do
      expect(array6.inject(5){|memo, num| memo + num}).to eq 17
    end

    it 'will multiply by a power of 5 if given an initial value of 5' do
      expect(array1.inject(5){|memo, num| memo * num}).to eq 40
    end

    it 'will multiply by a power of 5 with initial value of 5 on array without 1 at begining' do
      expect(array2.inject(5){|memo, num| memo * num}).to eq 640
    end

    it 'will correctly multiply the whole array by initial value if passed same argument as initial value' do
      expect(array6.inject(5){|memo, num| memo * num}).to eq 300
    end

    it 'can find the longest word in an array' do
      expect(array5.inject do |memo, word| 
        memo.length > word.length ? memo : word
      end).to eq 'sheep'
    end


  end


end