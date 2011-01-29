class Player
  
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/monkey.png", true)
    @x = 300
    @y = 300
  end
  
  def draw
    @icon.draw(@x,@y,20)
  end
  
  def move_left
    if @x < 0
      @x = 0
    else
      @x = @x - 20
    end
  end
  
  def move_right
    if @x > (@game_window.width - 100)
      @x = @game_window.width - 100
    else
      @x = @x + 30
    end
  end
  
  def move_up
    if @y < 0
      @y = 0
    else
      @y = @y - 20
    end
  end
  
  def move_down
    if @y > (@game_window.height-100)
      @y = @game_window.height - 100
    else
      @y = @y + 20
    end
  end

  def hit_by?(balls)
    balls.any?{|ball|Gosu::distance(@x, @y, ball.x, ball.y) < 50} 
  end
  
  
end
