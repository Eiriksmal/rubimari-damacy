require 'gosu'
require './rubymari'

class GameWindow < Gosu::Window
  def initialize(*args)
    super

    self.caption = "Rubymari Damacy"
    @rubymari = Rubymari.new
  end

  def update
    @rubymari.update
  end

  def draw

  end
end

# Launch the game
window = GameWindow.new(640, 480, false)
window.show
