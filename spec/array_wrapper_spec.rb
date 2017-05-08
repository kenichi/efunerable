$:.unshift File.expand_path '..', __FILE__
require 'spec_helper'

RSpec.describe ArrayWrapper do

  describe :constructor do

    it 'works' do
      expect(ArrayWrapper.new).to be_an ArrayWrapper
      expect(ArrayWrapper.new('a')).to be_an ArrayWrapper
      expect(ArrayWrapper.new('a', 1, 0x2, 3.0, true)).to be_an ArrayWrapper
    end

    it 'flattens arrays' do
      a = ArrayWrapper.new 'a', [1, [0x2, 3.0]], true
      expect(a.instance_variable_get(:@array).any? {|e| Array === e}).to eq false
    end

  end

  describe :each do
    it 'iterates elements' do
      args = ['a', [1, [0x2, 3.0]], true]
      a = ArrayWrapper.new(*args)
      flat = args.flatten
      count = 0
      a.each do |e|
        expect(e).to eq flat[count]
        count += 1
      end
      expect(count).to eq flat.length
    end
  end

  describe :equals do
    it 'compares wrapped array' do
      args = ['a', [1, [0x2, 3.0]], true]
      a = ArrayWrapper.new(*args)
      flat = args.flatten
      expect(a).to eq flat
    end
  end

end
