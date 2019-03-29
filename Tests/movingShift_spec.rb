require_relative '../Tasks/movingShift.rb'

RSpec.describe '#movingShift' do
  context 'when 1 char' do
    it 'moving shift' do
      expect(['B']).to eq(movingShift('A', 1))
      expect(['g']).to eq(movingShift('e', 2))
      expect(['d']).to eq(movingShift('a', 3))
    end
  end
  context 'when string' do
    it 'moving shift' do
      expect(['b', 'c', 'e', 'f', '']).to eq(movingShift('aabb', 1))
      expect(%w[Uy xz hu]).to eq(movingShift('Rustam', 3))
      expect(['Vs', 'kz', ' A', 'nb', 'gq']).to eq(movingShift('Soft Serve', 3))
    end
  end
end

RSpec.describe '#demovingShift' do
  context 'when 1 char' do
    it 'demoving shift' do
      expect('A').to eq(demovingShift(['B'], 1))
      expect('b').to eq(demovingShift(['d'], 2))
      expect('c').to eq(demovingShift(['f'], 3))
    end
  end
  context 'when string' do
    it 'demoving shift' do
      text = 'match message with a string'
      exp_array = ['xmgqw ', 'dwlmvc', 'b viuj', ' e yaz', 'rxr']
      expect('lala lala').to eq(demovingShift(['oe', 'qg', ' t', 'jv', 'l'], 3))
      expect('coal laoc').to eq(demovingShift(['dq', 'dp', ' r', 'hw', 'l'], 1))
      expect(text).to eq(demovingShift(exp_array, 11))
    end
  end
end

RSpec.describe 'reverse this func' do
  context 'when 1 char' do
    it 'reverse' do
      expect('A').to eq(demovingShift(movingShift('A', 1), 1))
      expect('c').to eq(demovingShift(movingShift('c', 5), 5))
      expect('h').to eq(demovingShift(movingShift('h', 12), 12))
    end
  end
  context 'when string' do
    it 'reverse' do
      text1 = 'Online Ruby compiler'
      text2 = 'Ruby on Rails'
      text3 = 'some text'
      expect(text1).to eq(demovingShift(movingShift(text1, 1), 1))
      expect(text2).to eq(demovingShift(movingShift(text2, 5), 5))
      expect(text3).to eq(demovingShift(movingShift(text3, 12), 12))
    end
  end
end
