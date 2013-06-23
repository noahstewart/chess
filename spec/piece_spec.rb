require_relative '../lib/chess/piece'

describe Chess::Piece do
  describe 'black piece' do
    subject { Chess::Piece.new(:black) }
    it { should be_black }
    it { should_not be_white }
  end

  describe 'white piece' do
    subject { Chess::Piece.new(:white) }
    it { should be_white }
    it { should_not be_black }
  end
end
