require '../Tasks/sum_of_sequence.rb'

RSpec.describe '#litres' do
  context 'valid input' do
    it 'returns result' do
      expect(sum_of_sequence(2, 6, 2)).to eq(12)
      expect(sum_of_sequence(1, 5, 1)).to eq(15)
      expect(sum_of_sequence(1, 5, 3)).to eq(5)
      expect(sum_of_sequence(0, 15, 3)).to eq(45)
      expect(sum_of_sequence(16, 15, 3)).to eq(0)
      expect(sum_of_sequence(2, 24, 22)).to eq(26)
      expect(sum_of_sequence(2, 2, 2)).to eq(2)
      expect(sum_of_sequence(2, 2, 1)).to eq(2)
      expect(sum_of_sequence(1, 15, 3)).to eq(35)
      expect(sum_of_sequence(15, 1, 3)).to eq(0)
    end
  end
  context 'not valid input' do
    it 'raises NoMethodError' do
      expect { sum_of_sequence('string') }.to raise_error(ArgumentError)
    end
  end
end
