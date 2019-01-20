class Game

  def initialize
    @word = "four"
  end

  def calculate_answer(guess)
    index = 0
    result = []
    @word.chars.each_with_index do |letter, index|
      if letter == guess[index]
        result.push(letter)
      else
        result.push('_')
      end
    end
    return result.join("")
  end

end
