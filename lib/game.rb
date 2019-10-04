require 'gosu'
require './rubymari'
require './screen'

class GameWindow < Gosu::Window
  def initialize(*args)
    super

    self.caption = "Rubymari Damacy"
    @rubymari = Rubymari.new
    @screen = Screen.new
  end

  def update
    @rubymari.update
  end

  def draw
    @screen.draw
  end
end

# Launch the game
window = GameWindow.new(640, 480, false)
window.show
