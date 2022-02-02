RSpec.describe 25 do
  it 'can test multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('ca').and end_with('ar')
  end

  it { is_expected.to start_with('ca').and end_with('ar') }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:mexico).or eq(:canada)
  end
end