require_relative '../lib/chess'

describe Chess::Board do
  describe '#square_at' do
    describe 'square at h1' do
      let(:piece) { subject.square_at(:h, 1) }
      it { expect(piece).not_to be_nil }
      it { expect(piece).to be_light }
    end

    describe 'square at a1' do
      let(:piece) { subject.square_at(:a, 1) }
      it { expect(piece).not_to be_nil }
      it { expect(piece).to be_dark }
    end

    describe 'square at a2' do
      let(:piece) { subject.square_at(:a, 2) }
      it { expect(piece).not_to be_nil }
      it { expect(piece).to be_light }
    end

    describe 'square at e5' do
      let(:piece) { subject.square_at(:e, 5) }
      it { expect(piece).not_to be_nil }
      it { expect(piece).to be_dark }
    end

    describe 'square at h8' do
      let(:piece) { subject.square_at(:h, 8) }
      it { expect(piece).not_to be_nil }
      it { expect(piece).to be_dark }
    end
  end
end
