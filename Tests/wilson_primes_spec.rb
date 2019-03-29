require_relative '../Tasks/wilson_primes'


describe 'willson_primes' do
  context 'returns right answers' do
    it 'returned 124' do
      expect(willsons_prime(5)).to eq(true)
    end
    it 'returned true' do
      expect(willsons_prime(13)).to eq(true)
    end
    it 'returned true' do
      expect(willsons_prime(87_369_336_901)).to eq(false)
    end
    it 'returned boolean' do
      expect(willsons_prime(12).class).to eq(FalseClass)
    end
    it 'should not raise any errors' do
      expect { willsons_prime(7_777_777_777_777_777_777_777_777_777_777_777_777_777) }.not_to raise_error
    end
  end
end
