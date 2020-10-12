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

userina = Player.new("userina")

puts userina.name
puts userina.life_remaining

cheater = Player.new("cheater", 25)

puts cheater.name
puts cheater.life_remaining

userina.lose_life(2)
puts "#{userina.life_remaining} / #{userina.initial_lifes}"