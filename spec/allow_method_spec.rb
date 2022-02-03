RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add)
    expect(calculator.add).to be_nil
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:reduce).and_return(10)

    expect(arr.reduce(:+)).to eq(10)
  end

  it 'can return multiple values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil

    [:b, :c]


  end
end