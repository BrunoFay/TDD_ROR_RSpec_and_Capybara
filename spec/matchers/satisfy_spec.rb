describe "Satisfy matcher" do
  it { expect(10).to satisfy { |z| z % 2 == 0 } }
  it {
      expect("rails").to satisfy "check if start with r" do |z|
        z.start_with?('r')
      end
    }
end