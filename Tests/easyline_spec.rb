require_relative '../Tasks/easyLine.rb'

RSpec.describe '#easyline' do
  it 'test to return 1 if input 0' do
    expect(easyline(0)).to eq(1)
  end

  it 'false eq' do
    expect(easyline(4)).not_to eq(69)
    expect(easyline(11)).not_to eq(1)
    expect(easyline(87)).not_to eq(123)
  end

  it 'true eq' do
    expect(easyline(7)).to eq(3_432)
    expect(easyline(13)).to eq(10_400_600)
    expect(easyline(17)).to eq(2_333_606_220)
    expect(easyline(19)).to eq(35_345_263_800)
  end
end
