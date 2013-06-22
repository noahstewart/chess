module Chess
  class Square

    def initialize(color)
      @color = color
    end

    def occupied?
      false
    end

    def light?
      @color == :light
    end

    def dark?
      @color == :dark
    end

  end
end
