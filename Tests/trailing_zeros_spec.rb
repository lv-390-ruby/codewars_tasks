require_relative '../Tasks/trailing_zeros.rb'

RSpec.describe '#zeros' do
  context 'when testing the method zeros' do
    it 'calculates the number of trailing zeros in a factorial of 6' do
      expect(zeros(6)).to eq(1)
      expect(zeros(30)).to eq(7)
      expect(zeros(0)).to eq(0)
      expect(zeros(12)).not_to eq(5)
    end
  end
end
