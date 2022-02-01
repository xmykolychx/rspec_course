class Royal
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# described_class - class under test

RSpec.describe Royal do
  subject { described_class.new('Test') }
  let(:tester) { described_class.new('Tester') }

  it 'should represent a person' do
    expect(subject.name).to eq('Test')
    expect(tester.name).to eq('Tester')
  end
end