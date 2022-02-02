class Wrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes' do
  describe Wrestler.new('Steve Austin', 'Stunner') do
    it 'checks for object attribute and proper values' do
      expect(subject).to have_attributes(name: 'Steve Austin')
      expect(subject).to have_attributes(finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Steve Austin', finishing_move: 'Stunner') }
  end
end