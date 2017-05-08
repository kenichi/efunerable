$:.unshift File.expand_path '..', __FILE__
require 'test_helper'

class ArrayWrapperTest < Minitest::Test

  def test_constructor
    [
      ArrayWrapper.new,
      ArrayWrapper.new('a'),
      ArrayWrapper.new('a', 1, 0x2, 3.0, true)
    ].each do |aw|
      assert aw
      assert ArrayWrapper === aw
    end
  end

  def test_constructor_flattens_arrays
    a = ArrayWrapper.new 'a', [1, [0x2, 3.0]], true
    refute a.instance_variable_get(:@array).any? {|e| Array === e}
  end

  def test_each
    args = ['a', [1, [0x2, 3.0]], true]
    a = ArrayWrapper.new(*args)
    flat = args.flatten
    count = 0
    a.each do |e|
      assert_equal flat[count], e
      count += 1
    end
    assert_equal flat.length, count
  end

  def test_equals
    args = ['a', [1, [0x2, 3.0]], true]
    a = ArrayWrapper.new(*args)
    flat = args.flatten
    assert a == flat
  end

end
