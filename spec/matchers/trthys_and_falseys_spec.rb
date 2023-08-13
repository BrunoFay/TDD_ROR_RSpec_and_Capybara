describe "Boolean matchers" do
  context "true and false" do
    it '.true' do
      expect(1.odd?).to be true
    end
    it '.false' do
      expect(1.even?).to be false
    end
  end

  context "truthy and falsey" do
    it '.truthy' do
      expect(1.odd?).to be_truthy
    end
    it '.falsey' do
      expect(1.even?).to be_falsey
    end
  end

  context "nil" do
    it('.nil') do
      expect(defined? x).to be_nil
    end
  end

end