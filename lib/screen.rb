class Screen
  def initialize
    @grass = Gosu::Image.new("../media/grass/Grass_04.png", :tileable => true)
  end

  def draw
    @grass.draw(0, 0, 0)
    @grass.draw(512, 0, 0)
  end
end
