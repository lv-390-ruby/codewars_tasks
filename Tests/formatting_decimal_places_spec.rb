require_relative '../Tasks/formatting_decimal_places'

describe 'round_to_two' do
  context 'right values' do
    it 'returns 2 values after dot' do
      expect(round_to_two(45.3564731818481814148).to_s.split('.').last.size).to eq(2)
    end
    it 'returnes 23.45 with argument 23.454545454545454545454545' do
      expect(round_to_two(23.454545454545454545454545)).to eq(23.45)
    end

    it 'returnes float' do
      expect(round_to_two(1.1234567890123456789).class).to eq(Float)
    end
    it 'works for 173735326.3783732637948948' do
      expect(round_to_two(173_735_326.3783732637948948)).to eq(173_735_326.38)
    end
    it 'should not raise any errors' do
      expect { round_to_two(100_000.9999999999999999999999999999999) }.not_to raise_error
    end
  end
  context 'works for random numbers' do
    it 'works for 100 times' do
      100.times do
        number = rand * 250.95316 - 125.47658
        expect(round_to_two(number)).to eq(number.round(2))
      end
    end
  end
end
