class Score
  attr_accessor :tries
  attr_accessor :finishes

  def initialize
    @tries = 0
    @finishes = []
    @font = './font/roboto-bold.ttf'
  end

  def print
    Text.new(x: 60, y: 300, text: 'Tries:', size: 20, font: @font)
    Text.new(x: 120, y: 300, text: @tries, size: 20, font: @font)

    @finishes.each_with_index do |value, index|
      Text.new(x: 420, y: 300 + (index * 22), text: 'Success:', size: 20, font: @font)
      Text.new(x: 520, y: 300 + (index * 22), text: value, size: 20, font: @font)
    end
  end

  def add_try
    @tries += 1
  end

  def add_finished
    @finishes.push(@tries)
    @tries = 0
  end
end
