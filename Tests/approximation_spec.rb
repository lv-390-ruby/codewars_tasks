require_relative '../Tasks/approximation.rb'

RSpec.describe '#approximation' do
  context 'valid input' do
    it 'returns result' do
      expect(approximation(2.6e-08)).to eq(1.2999999915500002e-08)
      expect(approximation(1.4e-09)).to eq(6.999999997549999e-10)
      expect(approximation(5.0e-06)).to eq(2.499996875007813e-06)
      expect(approximation(2.4e-07)).to eq(1.1999999280000087e-07)
    end
  end
  context 'invalid input' do
    it 'raises NoMethodError' do
      expect { approximation('string') }.to raise_error(NoMethodError)
    end
  end
end
