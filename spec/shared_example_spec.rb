RSpec.shared_examples 'object with three elements' do
  it "should return number of items" do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3] }
  include_examples 'object with three elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'object with three elements'
end

RSpec.describe  do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'object with three elements'
end

class TestClass
  def length
    3
  end
end

RSpec.describe TestClass do
  subject { described_class.new }
  include_examples 'object with three elements'
end