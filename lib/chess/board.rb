module Chess
  class Board
    FILES = %i( a b c d e f g h ).freeze
    RANKS = [1, 2, 3, 4, 5, 6, 7, 8].freeze

    def initialize
      @squares = {}

      8.times do |file|
        8.times do |rank|
          @squares[create_coordinate(file, rank)] = create_square(file, rank)
        end
      end
    end

    def square_at(file, rank)
      @squares.fetch([file, rank])
    end

    private
    def create_square(file, rank)
      if (file + rank).even?
        Square.new(:dark)
      else
        Square.new(:light)
      end
    end

    def create_coordinate(file, rank)
      [FILES[file], RANKS[rank]]
    end
  end
end
