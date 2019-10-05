require 'gosu'
require_relative 'rubymari'
require_relative 'screen'
require_relative 'player'

class GameWindow < Gosu::Window
  def initialize(*args)
    super

    self.caption = "Rubymari Damacy"

    @player = Player.new
    @grass = Gosu::Image.new("../media/grass/Grass_04.png", :tileable => true)
    # @screen = Screen.new(@player)
  end

  def update
    # draws the idle frame if no other keys are pressed
    @player.idle

    if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      @player.walk_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      @player.walk_right
    end
    if Gosu.button_down? Gosu::KB_DOWN or Gosu::button_down? Gosu::GP_BUTTON_0
      @player.walk_down
    end
    if Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_BUTTON_1
      @player.walk_up
    end
  end

  def draw
    # @screen.draw
    @grass.draw(0, 0, 0)
    @grass.draw(512, 0, 0)
    @player.draw
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
end

# Launch the game
window = GameWindow.new(640, 480, false)
window.show
