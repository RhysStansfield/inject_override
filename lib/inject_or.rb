class Array

  def new_inject(memo = nil)
    to_inject = memo.nil? ? self[1..-1] : self
    memo ||= self.first
    to_inject.each do |item|
      memo = yield memo, item
    end
    memo
  end

  def inject(memo = nil)
    to_inject = memo.nil? ? self[1..-1] : self
    memo ||= self.first
    to_inject.each do |item|
      memo = yield memo, item
    end
    memo
  end

end