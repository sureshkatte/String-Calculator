require 'rails_helper'

RSpec.describe Calculator, type: :service do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end

    it 'returns the number of single number string' do
      expect(Calculator.add("5")).to eq(5)
    end

    it 'returns the sum of two numbers separated by comma' do
      expect(Calculator.add("1,2")).to eq(3)
    end

    it 'handles multiple numbers' do
      expect(Calculator.add("1,2,3,4")).to eq(10)
    end

    it 'supports custom delimiters' do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an error for a single negative number' do
      expect { Calculator.add("-1") }.to raise_error("negative numbers not allowed: -1")
    end

  end
end