class Roster

  attr_accessor :num_of_players, :players_names, :players
  
  def initialize()
    puts "How many players"
    @num_of_players = gets.chomp.to_i

    while (num_of_players == 0)
      puts "No really, how many players?"
      self.num_of_players = gets.chomp.to_i
    end

    @players_names = []
    @players = []

    while @players_names.length() < num_of_players do
      puts "What is player #{@players_names.length() + 1}'s name?"
      @players_names << gets.chomp
    end

    for player in @players_names
      @players << player = Player.new("#{player}")
    end
  end


  def kill_player(name)
    @players.slice!(@players.index(name))
  end
end
