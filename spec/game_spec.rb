require 'game'

describe Game do
  subject { Game.new }

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
    it "returns the full word when the guess is correct" do
      expect(subject.calculate_answer("four")).to eq "four"
    end
  end
end
