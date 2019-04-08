require_relative '../Tasks/my_head_is_at_the_wrong_end.rb'

RSpec.describe '#fix_the_meerkat' do
  let(:string) { %w[tail body head] }

  it 'reverses string' do
    expect(fix_the_meerkat(string)).to eq(%w[head body tail])
  end
end
