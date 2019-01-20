require 'game'

describe Game do
  subject { Game.new }

  describe "#calculate_answer" do
    before (:each) do
      @guess = "cats"
    end
    it "returns no letters" do
      expect(subject.calculate_answer(@guess)).to eq '____'
    end
  end
end
