RSpec.describe 'start_with and end_with' do
  describe 'caterpillar' do
    it 'checks for substring at the start or in the end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('ar')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('ar') }
  end

  describe [:a, :b, :c, :d] do
    it 'checks for substring at the start or in the end' do
      expect(subject).to start_with(:a)
      expect(subject).to end_with(:d)
    end
  end
end