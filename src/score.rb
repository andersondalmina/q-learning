class Score
  attr_accessor :tries
  attr_accessor :finishes

  def initialize
    @tries = 0
    @finishes = []
    @font = './font/roboto-bold.ttf'
    @font_size = 17
  end

  def print
    Text.new(x: 60, y: 300, text: 'Tries:', size: @font_size, font: @font)
    Text.new(x: 120, y: 300, text: @tries, size: @font_size, font: @font)

    Text.new(x: 60, y: 320, text: 'Success:', size: @font_size, font: @font)

    y = 320
    x = 110
    @finishes.each_with_index do |value, index|
      x += 35
      x += 5 if @finishes[index - 1] > 100
      if index != 0 && (index % 10).zero?
        y += 30
        x = 145
      end
      Text.new(x: x, y: y, text: value, size: @font_size, font: @font)
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
