require 'game'

describe Game do
  subject { Game.new }

  describe "#calculate_answer" do
    it "returns no letters" do
      expect(subject.calculate_answer("cats")).to eq "____"
    end
    it "returns the first letter only when it matches the word" do
      expect(subject.calculate_answer("five")).to eq "f___"
    end
  end
end
