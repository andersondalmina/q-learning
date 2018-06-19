require 'ruby2d'
require_relative 'src/map.rb'
require_relative 'src/agent.rb'
require_relative 'src/state.rb'
require_relative 'src/score.rb'

# start map, agent and score
map = Map.new
initial_state = map.matrix[4][0]
agent = Agent.new(initial_state)
score = Score.new

# config window
set(title: "Q Learning")

update do
  # check frames to run slowly
  if (get :frames) % 2 == 0 && score.finishes.length < 50
    clear
    map.print_qtable
    map.print

    action = agent.get_action
    next_state = map.get_next_state(agent.state, action)
    agent.state.update_state_rewards(action, next_state)

    agent.walk(next_state)

    if next_state.reward == 100
      score.add_finished
      agent.walk(initial_state)
    end

    agent.print
    score.print
    score.add_try
  end
end

# print window
show
