RSpec.describe Array do
  subject(:sally) do
    [0, 1]
  end

  it 'pops the element' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'creates new object' do
    expect(sally).to eq([0, 1])
  end
end