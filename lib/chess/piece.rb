module Chess
  class Piece
    def initialize(color)
      @color = color
    end

    def black?
      @color == :black
    end

    def white?
      @color == :white
    end
  end
end
