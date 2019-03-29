require_relative '../Tasks/where_is_vasya'

RSpec.describe '#where_is_he' do
  context 'When testing the method where_is_he' do
    it 'finds the number of positions Vasya can occupy' do
      position = where_is_he(3, 1, 1)
      expect(position).to eq 2
      position = where_is_he(5, 2, 3)
      expect(position).to eq 3
    end
  end
end
