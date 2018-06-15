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
  if (get :frames) % 15 == 0
    clear
    map.print

    action = agent.get_action
    next_state = map.get_next_state(agent.state, action)
    agent.walk(next_state)
    agent.print

    score.print
    score.add_try
  end
end

# print window
show
