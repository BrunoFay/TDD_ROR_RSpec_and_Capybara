describe "Comparison matchers" do
  let(:arr){ [1,2,3] }

  context "> and >=" do
    it ">" do
      expect(2).to be > 1
    end
    it ">=" do
      expect(2).to be >= 1
    end
  end

  context "be_between include and exclude" do
    it "include" do
      expect(2).to be_between(1,5).inclusive
      expect(1).to be_between(1,5).inclusive
      expect(5).to be_between(1,5).inclusive
    end
    it "exclude" do
      expect(2).to be_between(1,5).inclusive
      expect(1).to_not be_between(1,5).exclusive
      expect(5).to_not be_between(1,5).exclusive
    end
  end
  context "match" do
    it " regex" do
      expect("bruno@hotmal.com").to match(/..@../)
    end
  end
  context "start_with" do
    it 'arr' do
      expect(arr).to start_with(1)
    end

    it 'string' do
      expect("oi, eu sou o bruno").to start_with('oi,')
    end
  end

  context "ends_with" do
    it 'arr' do
      expect(arr).to end_with(3)
    end

    it 'string' do
      expect("oi, eu sou o bruno").to end_with('bruno')
    end
  end

end