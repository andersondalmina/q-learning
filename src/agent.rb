class Agent
  attr_accessor :state

  def initialize(state)
    @actions = %i[up right down left]
    @state = state
  end

  def print
    Square.new(x: (state.column * 52 + 72.5), y: (state.row * 52 + 32.5), size: 25, color: 'red')
  end

  def walk(state)
    @state = state
  end

  def get_action
    possible_actions = []
    possible_actions.replace(@actions)
    possible_actions.delete(:up) if @state.row.zero?
    possible_actions.delete(:right) if @state.column == 9
    possible_actions.delete(:down) if @state.row == 4
    possible_actions.delete(:left) if @state.column.zero?
    possible_actions.sample
  end
end
