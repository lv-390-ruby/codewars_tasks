require_relative '../Tasks/artificial_rain.rb'

RSpec.describe '#artificial_rain' do
  context 'valid input' do
    it 'returns result' do
      expect(artificial_rain([2])).to eq([1, 0])
      expect(artificial_rain([1, 2, 1, 2, 1])).to eq([3, 3])
      expect(artificial_rain([4, 2, 3, 3, 2])).to eq([4, 2])
    end
  end
end
