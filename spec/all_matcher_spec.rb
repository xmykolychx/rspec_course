RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    expect([5, 7, 9, 11]).to all(be_odd)
    expect([5, 7, 9, 11]).to all(be < 13)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
  end
end