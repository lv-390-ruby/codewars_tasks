require_relative '../Tasks/gap_in_primes'

RSpec.describe '#gap_in_primes' do
  context 'when testing the method gap_in_primes' do
    it 'returns the first pair of two prime numbers spaced with a gap' do
      expect(gap(4, 130, 200)).to eq [163, 167]
    end
    it 'returns nil if numbers exist otherwise' do
      expect(gap(4, 130, 200)).to eq [163, 167]
      expect(gap(6, 100, 110)).to be_nil
    end
  end
end
