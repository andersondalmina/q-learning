class State
  attr_accessor :reward
  attr_accessor :reward_up
  attr_accessor :reward_down
  attr_accessor :reward_right
  attr_accessor :reward_left
  attr_accessor :row
  attr_accessor :column

  def initialize(reward, row, column)
    @reward = reward
    @reward_up = 0
    @reward_down = 0
    @reward_right = 0
    @reward_left = 0
    @row = row
    @column = column
  end
end
