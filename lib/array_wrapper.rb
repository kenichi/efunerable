$:.unshift File.expand_path '..', __FILE__

require 'custom_enumerable'

class ArrayWrapper
  include CustomEnumerable

  def initialize *args
    @array = args.flatten
  end

  def each &block
    @array.each(&block)
    self
  end

  def == other
    @array == other
  end

end
