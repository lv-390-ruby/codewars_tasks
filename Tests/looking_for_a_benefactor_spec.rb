require_relative '../Tasks/looking_for_a_benefactor'

describe 'new_avg' do
  context 'returns right values' do
    it 'returned 9 with arguments ([1,2], 4)' do
      expect(new_avg([1, 2], 4)).to eq(9)
    end
    it 'returned 58430 with arguments [1400.25, 30000.76, 5.56, 7, 9, 11, 15.48, 120.98], 10000)' do
      expect(new_avg([1400.25, 30_000.76, 5.56, 7, 9, 11, 15.48, 120.98], 10_000)).to eq(58_430)
    end
    it 'returned 90 with arguments ([], 90)' do
      expect(new_avg([], 90)).to eq(90)
    end
    it 'returned Integer' do
      expect(new_avg([3, 4], 4).class).to eq(Integer)
    end
    it 'should not raise any errors' do
      expect { new_avg([3, 4], 100_000) }.not_to raise_error
    end
  end
end
