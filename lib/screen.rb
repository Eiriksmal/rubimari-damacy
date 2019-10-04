class Screen
  def initialize(player)
    @grass = Gosu::Image.new("../media/grass/Grass_04.png", :tileable => true)
    @player = player
  end

  def draw
    @grass.draw(0, 0, 0)
    @grass.draw(512, 0, 0)
    @player.draw
  end
end
