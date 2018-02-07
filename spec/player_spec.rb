require "player"

describe Player do
  describe "#name" do
    let(:player) { Player.new("Matty") }
    it "returns a name" do
      expect(player.name).to eq "Matty"
    end
  end
end
