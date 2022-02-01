RSpec.describe Array do

  it 'should start off empty and be able to add items' do
    expect(subject.length).to eq(0)
    subject << 'test'
    expect(subject.length).to eq(1)
  end

end