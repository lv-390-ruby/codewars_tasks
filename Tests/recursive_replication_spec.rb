require_relative '../Tasks/recursive_replication.rb'

RSpec.describe '#replicate' do
  let(:arr_root) { [4, 9, 1] }
  let(:arr_square) { [2, 5, 7] }

  it '3 times replicates 5 ' do
    expect(replicate(3, 5)).to eq([5, 5, 5])
  end
end
