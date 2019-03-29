require_relative '../Tasks/keep_hydrated.rb'

RSpec.describe '#litres' do
  context 'valid input' do
    it 'returns result' do
      expect(keep_hydrated(5)).to eq(2)
      expect(keep_hydrated(2)).to eq(1)
      expect(keep_hydrated(1)).to eq(0)
      expect(keep_hydrated(10)).to eq(5)
      expect(keep_hydrated(1.4)).to eq(0)
      expect(keep_hydrated(12.3)).to eq(6)
      expect(keep_hydrated(0.82)).to eq(0)
      expect(keep_hydrated(11.8)).to eq(5)
      expect(keep_hydrated(0)).to eq(0)
      expect(keep_hydrated(1787)).to eq(893)
      expect(keep_hydrated(5.5)).to eq(2)
    end
  end
  context 'not valid input' do
    it 'raises NoMethodError' do
      expect { keep_hydrated('string') }.to raise_error(NoMethodError)
    end
  end
end
