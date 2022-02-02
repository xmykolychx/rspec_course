RSpec.describe 'comparison matchers' do
  it 'allow use ruby comparison operators' do
    expect(8).to be > 5
    expect(1).to be < 6
    expect(1).to be == 1
  end

  describe 100 do
    it { is_expected.to be > 90 }
  end
end