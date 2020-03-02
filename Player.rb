class Player
attr_reader :health

  def initialize(health = 3)
    @health = health
  end

  def lose_life
    @health = @health - 1
  end

  def lost_the_game
    @health == 0
  end

  # def inspect
  #   puts "This player's health is #{@health}"
  # end

end
