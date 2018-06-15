class Map
  attr_accessor :matrix

  def initialize
    @matrix = Array.new(5) { Array.new(10) }
    (0..4).each do |i1|
      (0..9).each do |i2|
        reward = -1
        reward = -100 if i1 == 0 && (i2 == 4 || i2 == 5)
        reward = -100 if i1 == 1 && (i2 == 1 || i2 == 2 || i2 == 4 || i2 == 5 || i2 == 7)
        reward = -100 if i1 == 3 && (i2 == 3 || i2 == 7)
        reward = -100 if i1 == 4
        reward = 100 if i1 == 4 && i2 == 9
        @matrix[i1][i2] = State.new(reward, i1, i2)
      end
    end
  end

  def print
    @matrix.each do |column|
      column.each do |state|
        color = 'blue'
        color = 'gray' if state.reward == -100
        color = 'green' if state.reward == 100

        Square.new(x: (state.column * 52 + 60), y: (state.row * 52 + 20), size: 50, color: color)
      end
    end
  end

  def get_next_state(current_state, action)
    case action
    when :up
      @matrix[current_state.row - 1][current_state.column]
    when :down
      @matrix[current_state.row + 1][current_state.column]
    when :right
      @matrix[current_state.row][current_state.column + 1]
    else
      @matrix[current_state.row][current_state.column - 1]
    end
  end
end
