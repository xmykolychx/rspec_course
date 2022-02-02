RSpec.describe 'not_to method' do
  it 'should check that two values do no match' do
    expect(8).not_to eq(5)
  end
end