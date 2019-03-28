require_relative '../Tasks/simpleValidation.rb'

RSpec.describe '#validate_usr' do
  it 'username is valid' do
    expect(validate_usr('bestthebest')).to be true
    expect(validate_usr('q1w2e3')).to be true
    expect(validate_usr('rubyorg')).to be true
  end

  it 'username is not valid' do
    expect(validate_usr('Best The Best')).to be false
    expect(validate_usr('ror')).to be false
    expect(validate_usr('mynickname12345678')).to be false
  end
end
