require 'rails_helper'

RSpec.describe Calculator, type: :service do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end
  end
end