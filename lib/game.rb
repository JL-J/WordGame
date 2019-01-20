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
    return "Please enter a four letter word" if guess.length != 4
    return "Please only enter lower case letters a-z" if [/[a-z]+/] != guess
  end

end
