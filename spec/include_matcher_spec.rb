RSpec.describe 'include matcher' do
  describe 'cocoa' do
    it 'checks for substring inclusion' do
      expect(subject).to include('c')
      expect(subject).to include('a')
    end

    it { is_expected.to include('co') }
  end

  describe [10, 20, 30] do
    it { is_expected.to include(10) }
  end

  describe ({a: 2, b: 4}) do
    it 'can check for key existence' do
      expect(subject).to include(:a, :b)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 2)
    end
  end
end