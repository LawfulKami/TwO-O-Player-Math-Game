class Player
  attr_accessor :life_remaining
  attr_reader :name, :initial_lifes

  def initialize(name, life = 3)
    @name = name
    @life_remaining = life
    @initial_lifes = life
  end

  def lose_life(lost)
    self.life_remaining -= lost
  end

end

