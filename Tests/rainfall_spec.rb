require_relative '../Tasks/rainfall'

data =  'Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,' \
        'Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9' + "\n" \
        'London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,' \
        'Jul 59.5,Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9'

RSpec.describe '#mean' do
  context 'when testing the method mean' do
    it 'returns the average of rainfall for the city' do
      expect(mean('London', data)).to eq 51.199999999999996
      expect(mean('Rome', data)).to eq 66.02499999999999
    end
    it 'returns -1 if city is not found' do
      expect(mean('Lviv', data)).to eq(-1)
    end
  end
end

describe '#variance' do
  context 'when testing the method variance' do
    it 'returns the variance of rainfall for the city' do
      expect(variance('London', data)).to eq 57.42833333333334
      expect(variance('Rome', data)).to eq 915.3852083333335
    end
    it 'returns -1 if city is not found' do
      expect(variance('Lviv', data)).to eq(-1)
    end
  end
end
