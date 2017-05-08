module CustomEnumerable

  # Returns a new array with the results of running block once for every element
  # in enum.
  #
  def map &block
  end

  # Passes each entry in enum to block. Returns the first for which block is not
  # false. If no object matches, calls ifnone and returns its result when it is
  # specified, or returns nil otherwise.
  #
  def find ifnone = nil, &block
  end

  # Combines all elements of enum by applying a binary operation, specified by
  # a block or a symbol that names a method or operator.
  #
  # If you specify a block, then for each element in enum the block is passed
  # an accumulator value (memo) and the element. If you specify a symbol
  # instead, then each element in the collection will be passed to the named
  # method of memo. In either case, the result becomes the new value for memo.
  # At the end of the iteration, the final value of memo is the return value for
  # the method.
  #
  # If you do not explicitly specify an initial value for memo, then the first
  # element of collection is used as the initial value of memo.
  #
  def reduce initial_or_sym = nil, symbol = nil, &block
  end

end
