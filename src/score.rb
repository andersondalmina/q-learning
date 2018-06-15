class Score
  attr_accessor :tries
  attr_accessor :finishes

  def initialize
    @tries = 0
    @finishes = 0
    @font = './font/roboto-bold.ttf'
  end

  def print
    Text.new(x: 60, y: 300, text: 'Tries:', size: 20, font: @font)
    Text.new(x: 120, y: 300, text: @tries, size: 20, font: @font)
  end

  def add_try
    @tries += 1
  end
end
