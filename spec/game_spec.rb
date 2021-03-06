require 'game'

describe Game do
  subject { Game.new }

  describe "#correct_guess?" do
    it "returns true when the guess is correct" do
      expect(subject.correct_guess?("four")).to eq true
    end
    it "returns false when the guess is incorrect" do
      expect(subject.correct_guess?("pens")).to eq false
    end
  end

  describe "#calculate_answer" do
    it "returns no letters when the guess and word do not match" do
      expect(subject.calculate_answer("cats")).to eq "____"
    end
    it "returns the first letter only when it matches the word" do
      expect(subject.calculate_answer("five")).to eq "f___"
    end
    it "returns the the first two letter when it matches the word" do
      expect(subject.calculate_answer("font")).to eq "fo__"
    end
    it "returns the second, third and fourth letter when they match the word" do
      expect(subject.calculate_answer("hour")).to eq "_our"
    end
  end

  describe "#check_guess" do
    it "returns an error when a word with less than 4 characters is entered" do
      expect(subject.check_guess("tea")).to eq "Please enter a four letter word"
    end
    it "returns an error when a word with more than 4 characters is entered" do
      expect(subject.check_guess("beautiful")).to eq "Please enter a four letter word"
    end
    it "returns an error when no word is entered" do
      expect(subject.check_guess("")).to eq "Please enter a four letter word"
    end
    it "raises an error if a word is entered that contains speaclial characters" do
      expect(subject.check_guess("ca$h")).to eq "Please only enter lower case letters a-z"
    end
    it "raises an error if a word is entered that contains upper case characters" do
      expect(subject.check_guess("fouR")).to eq "Please only enter lower case letters a-z"
    end
  end

end
