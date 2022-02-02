RSpec.describe 'not_to matcher' do
  it 'checks for the inverse of a matcher' do
    expect(10).not_to eq(5)

    expect([1, 2, 3]).not_to eq([1, 2, 3])

    expect(10).not_to be_odd

    expect(5).not_to respond_to(:length)
  end
end