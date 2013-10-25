class Array

  def new_inject
    memo = self.first
    items_to_iterate = self[1..-1]
    items_to_iterate.each do |item|
      memo = yield memo, item
    end
    memo
  end

end