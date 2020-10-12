class Quiz

  def initialize()

    roster = Roster.new

    while roster.players.length() > 1

      for turn in roster.players
        question = Question.new
        puts "#{turn.name} : #{question.get_question[0]}" 
        user_answer = gets.chomp.to_i
        if user_answer != question.get_question[1]
          turn.lose_life(1)
          puts "Nope!"
        else 
          puts "Good Job!"
        end

        if turn.life_remaining == 0
          roster.kill_player(turn)
          puts "#{turn.name} is dead!"
        end

        for score in roster.players
          puts "#{score.name} : #{score.life_remaining} / #{score.initial_lifes}"
        end


        puts "-----NEW TURN -----"
      end

    end
    
    puts "The winner is ....."
    puts "#{roster.players[0].name}!!!"
    puts "---- Game Over ----"
    puts "Thanks for playing"

  end



end