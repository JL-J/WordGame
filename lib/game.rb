class Game

  def initialize
    @word = "four"
  end

  def calculate_answer(guess)
    result = []
    @word.chars.each_with_index do |letter, index|
      letter == guess[index] ? result.push(letter) : result.push('_')
    end
    return result.join("")
  end

  def correct_guess?(guess)
    guess == @word
  end

  def check_guess(guess)
    fail "Please enter a four letter word" if guess.length < 4
  end

end
