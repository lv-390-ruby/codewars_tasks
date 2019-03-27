require 'rspec'
require_relative 'count_of_positives'

describe '#count_of_positives' do
  context 'when array is empty or nil' do
    it 'returns empty array' do
      expect(count_positives_sum_negatives([]).empty?).to be true
      expect(count_positives_sum_negatives([])).to eq([])
      expect(count_positives_sum_negatives(nil)).to eq([])
    end
  end

  context 'when array is not empty' do
    it 'returns count of positives' do
      expect(count_positives_sum_negatives([1, 2]).first).to eq(2)
      expect(count_positives_sum_negatives([1, 2, 3, -4]).first).to eq(3)
    end

    it 'returns sum of negatives' do
      expect(count_positives_sum_negatives([-1, -2]).last).to eq(-3)
      expect(count_positives_sum_negatives([1, 2, -3, -4]).last).to eq(-7)
    end
  end
end
