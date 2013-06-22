require_relative '../lib/chess/square'

describe Chess::Square do
  subject { Chess::Square.new(:dark) }

  it { should_not be_occupied }

  describe 'dark square' do
    subject { Chess::Square.new(:dark) }

    it { should_not be_light }

    it { should be_dark }
  end

  describe 'light square' do
    subject { Chess::Square.new(:light) }

    it { should be_light }

    it { should_not be_dark }
  end
end
