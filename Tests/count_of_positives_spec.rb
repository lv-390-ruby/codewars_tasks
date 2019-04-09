# frozen_string_literal: true

require 'rspec'
require_relative '../Tasks/count_of_positives'

describe '#count_positives_sum_negatives' do
  context 'when lst is empty or nil' do
    it 'returns empty array' do
      expect(count_positives_sum_negatives([])).to eq([])
      expect(count_positives_sum_negatives(nil)).to eq([])
    end
  end

  context 'when lst is not empty' do
    it 'returns count of positives' do
      expect(count_positives_sum_negatives([1, 2]).first).to eq(2)
      expect(count_positives_sum_negatives([1, 2, 3, -4]).first).to eq(3)
    end

    it 'returns sum of negatives' do
      expect(count_positives_sum_negatives([-1, -2]).last).to eq(-3)
      expect(count_positives_sum_negatives([1, 2, -3, -4]).last).to eq(-7)
    end

    it 'returns error' do
      expect { stockList('string') }.to raise_error(NoMethodError)
      expect { stockList(%w[1 2 3]) }.to raise_error(NoMethodError)
    end
  end
end
