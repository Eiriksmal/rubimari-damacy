class Player
  attr_reader :x, :y

  def initialize
    @width = 19
    @height = 32

    @left_frames = {:left => Gosu::Image.new("../media/boy/redleft.png", @width, @height),
                  :left1 => Gosu::Image.new("../media/boy/redleftwalk1.png", @width, @height),
                  :left2 => Gosu::Image.new("../media/boy/redleftwalk2.png", @width, @height)}

    @right_frames = {:right => Gosu::Image.new("../media/boy/redright.png", @width, @height),
                    :right1 => Gosu::Image.new("../media/boy/redrightwalk1.png", @width, @height),
                    :right2 => Gosu::Image.new("../media/boy/redrightwalk2.png", @width, @height)}

    @up_frames = {:up => Gosu::Image.new("../media/boy/redup.png", @width, @height),
                     :up1 => Gosu::Image.new("../media/boy/redupwalk1.png", @width, @height),
                     :up2 => Gosu::Image.new("../media/boy/redupwalk2.png", @width, @height)}

    @down_frames = {:down => Gosu::Image.new("../media/boy/reddown.png", @width, @height),
                     :down1 => Gosu::Image.new("../media/boy/reddownwalk1.png", @width, @height),
                     :down2 => Gosu::Image.new("../media/boy/reddownwalk2.png", @width, @height)}

    @walk_left = [@left_frames[:left1], @left_frames[:left2]]
    @walk_right = [@right_frames[:right1], @right_frames[:right2]]
    @walk_up = [@up_frames[:up1], @up_frames[:up2]]
    @walk_down = [@down_frames[:down1], @down_frames[:down2]]

  end

  def draw
    @image.draw(@x - @width/2, @y - @height/2, 10)
  end

  def idle
    @image = @down_frames[:down]
  end

  def walk_right
    @x += 1
  end

  def walk_left
    @x -= 1
  end

  def walk_up
    @y += 1
  end

  def walk_down
    @y -= 1
  end
end
