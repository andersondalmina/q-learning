class Map
  class Cell
    @recomponsa = 0
    @recompensa_norte = 0
    @recompensa_sul = 0
    @recompensa_leste = 0
    @recompensa_oeste = 0

    def initialize(recompensa)
      @recompensa = recompensa
    end
  end

  def initialize()
    @matrix = Array.new(5) {Array.new(10, Cell.new(-1))}
    @matrix[0][4] = Cell.new(-100)
    @matrix[0][5] = Cell.new(-100)
    @matrix[1][1] = Cell.new(-100)
    @matrix[1][2] = Cell.new(-100)
    @matrix[1][4] = Cell.new(-100)
    @matrix[1][5] = Cell.new(-100)
    @matrix[1][7] = Cell.new(-100)
    @matrix[3][3] = Cell.new(-100)
    @matrix[3][7] = Cell.new(-100)
    (0..9).each do |i|
      @matrix[4][i] = Cell.new(-100)
    end
    @matrix[4][9] = Cell.new(100)
  end

  def show
    p @matrix
  end
end
