require_relative '../Tasks/pole_vault.rb'

RSpec.describe '#starting_mark' do
  context 'valid input' do
    it 'returns result' do
      expect(pole_valut(1.52)).to eq(9.45)
      expect(pole_valut(1.83)).to eq(10.67)
      expect(pole_valut(1.22)).to eq(8.27)
      expect(pole_valut(2.13)).to eq(11.85)
      expect(pole_valut(1.75)).to eq(10.36)
    end
  end
  context 'invalid input' do
    it 'raises NoMethodError' do
      expect { pole_valut('string') }.to raise_error(NoMethodError)
    end
  end
end
