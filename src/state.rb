class State
  attr_accessor :reward
  attr_accessor :qtable
  attr_accessor :row
  attr_accessor :column

  def initialize(reward, row, column)
    @reward = reward
    @qtable = { up: 0, right: 0, down: 0, left: 0 }
    @row = row
    @column = column

    @qtable.delete(:up) if @row.zero?
    @qtable.delete(:right) if @column == 9
    @qtable.delete(:down) if @row == 4
    @qtable.delete(:left) if @column.zero?
  end

  def update_state_rewards(action, next_state)
    if next_state.row == 4 && next_state.column == 9
      @qtable[action] = next_state.reward
    else
      max = next_state.qtable.values.max
      @qtable[action] = @reward + 0.5 * max
    end
  end
end
