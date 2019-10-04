class Player
  attr_reader :x, :y

  def initialize
    @x = 200
    @y = 200

    @width = 19
    @height = 32

    @left_frames = {:left => Gosu::Image.new("../media/boy/redleft.png"),
                  :left1 => Gosu::Image.new("../media/boy/redleftwalk1.png"),
                  :left2 => Gosu::Image.new("../media/boy/redleftwalk2.png")}

    @right_frames = {:right => Gosu::Image.new("../media/boy/redright.png"),
                    :right1 => Gosu::Image.new("../media/boy/redrightwalk1.png"),
                    :right2 => Gosu::Image.new("../media/boy/redrightwalk2.png")}

    @up_frames = {:up => Gosu::Image.new("../media/boy/redup.png"),
                     :up1 => Gosu::Image.new("../media/boy/redupwalk1.png"),
                     :up2 => Gosu::Image.new("../media/boy/redupwalk2.png")}

    @down_frames = {:down => Gosu::Image.new("../media/boy/reddown.png"),
                     :down1 => Gosu::Image.new("../media/boy/reddownwalk1.png"),
                     :down2 => Gosu::Image.new("../media/boy/reddownwalk2.png")}

    idle
  end

  def draw
    @image.draw(@x - @width/2, @y - @height/2, 10)
  end

  def idle
    @image = @down_frames[:down]
  end

  def walk_right
    @image = walk_right_frames.pop
    @x += 1
  end

  def walk_left
    @image = walk_left_frames.pop
    @x -= 1
  end

  def walk_up
    @image = walk_up_frames.pop
    @y -= 1
  end

  def walk_down
    @image = walk_down_frames.pop
    @y += 1
  end

  def walk_left_frames
    [@left_frames[:left1], @left_frames[:left2]]
  end

  def walk_right_frames
    [@right_frames[:right1], @right_frames[:right2]]
  end

  def walk_up_frames
    [@up_frames[:up1], @up_frames[:up2]]
  end

  def walk_down_frames
    [@down_frames[:down1], @down_frames[:down2]]
  end
end
