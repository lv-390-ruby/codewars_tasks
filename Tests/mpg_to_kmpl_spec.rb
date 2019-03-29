require_relative '../Tasks/mpg_to_kmpl'

RSpec.describe 'converter' do
  context 'when testing the method converter' do
    it 'gets the number of kilometers per liter' do
      kmpl = converter(12)
      expect(kmpl).to eq 4.25
    end
  end
end
