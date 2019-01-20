class Game

  def initialize
    @word = "four"
  end

  def calculate_answer(guess)
    correct_guess?(guess)
    partial_guess(guess)
  end

  private

  def correct_guess?(guess)
    return @word if (guess == @word)
  end

  def partial_guess(guess)
    result = []
    @word.chars.each_with_index do |letter, index|
      letter == guess[index] ? result.push(letter) : result.push('_')
    end
    return result.join("")
  end

end
