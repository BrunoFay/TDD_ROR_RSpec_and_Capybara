describe "equality matchers" do
  let(:x) { "oi" }
  let(:y) { "oi" }
  context "same obj" do
    it(".equal") do
      expect(x).to equal(x)
      expect(x).to_not equal(y)
    end
    it(".be") do
      expect(x).to be(x)
      expect(x).to_not be(y)
    end
  end
  context "same value" do
    it(".eql") do
      expect(x).to eql(y)
    end
    it(".eq") do
      expect(x).to eq(y)
    end
  end
end