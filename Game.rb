require './Question'
require './Player'

class Game
  def initialize()
    @starting_health = 3
    @player_array = [Player.new(@starting_health), Player.new(@starting_health)]
    @turns = 0;
    @continue = true
    # puts @player_array[0].inspect
  end

  def start()
    while @continue
      @question = Question.new()
      puts "----- Turn #{@turns + 1} -----"
      puts "Player #{(@turns % 2)+1}: what is #{@question.question_text}?"
      if @question.check_answer(gets.chomp)
        puts "YES! You are correct"
      else
        puts "Player #{(@turns % 2)+1}: Seriously? No!"
        @player_array[@turns % 2].lose_life()
        
        if @player_array[@turns % 2].lost_the_game()
          @continue = false
          puts "Player #{(@turns + 1) % 2} wins with a score of #{@player_array[(@turns + 1) % 2].health}/#{@starting_health}"
        end
      end
      puts "P1: #{@player_array[0].health}/#{@starting_health} vs P2: #{@player_array[1].health}/#{@starting_health}"
      @turns = @turns + 1
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end