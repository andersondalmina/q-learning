class Agent
  attr_accessor :state

  def initialize(state)
    @state = state
    @epsilon = 0.7
  end

  def print
    Square.new(x: (state.column * 52 + 72.5), y: (state.row * 52 + 32.5), size: 25, color: 'red')
  end

  def walk(state)
    @state = state
  end

  def get_action
    # Select random action
    return @state.qtable.keys.sample if rand > @epsilon

    # Select based on Q table
    return @state.qtable.key(@state.qtable.values.max)
  end
end
