require_relative '../Tasks/square_or_square_root.rb'

RSpec.describe '#square_or_square_root' do
  let(:arr_root) { [4, 9, 1] }
  let(:arr_square) { [2, 5, 7] }

  it 'takes a square root' do
    expect(square_or_square_root(arr_root)).to eq([2, 3, 1])
  end
  it 'squares a number' do
    expect(square_or_square_root(arr_square)).to eq([4, 25, 49])
  end
end
