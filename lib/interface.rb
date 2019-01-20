require_relative 'game'

class Interface

  def initialize(game = Game.new)
    @game = game
  end

  def play_game
    print "Please enter a four letter word \n "
    guess = gets.chomp
    until @game.correct_guess?(guess) == true
      print "#{@game.calculate_answer(guess)} \n"
      guess = gets.chomp
    end
    print "Congratulations! You guessed my word"
  end

end
