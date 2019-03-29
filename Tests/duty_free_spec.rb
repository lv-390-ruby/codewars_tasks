require_relative '../Tasks/dutyFree.rb'

RSpec.describe '#duty_free' do
  it 'return price' do
    expect(duty_free(10, 20, 30)).to eq(15)
    expect(duty_free(1, 2, 3)).to eq(150)
    expect(duty_free(13, 2, 3)).to eq(11)
    expect(duty_free(41, 232, 123)).not_to eq(20)
    expect(duty_free(451, 2342, 743)).not_to eq(422)
    expect(duty_free(927, 22, 927)).not_to eq(1235)
  end
end
