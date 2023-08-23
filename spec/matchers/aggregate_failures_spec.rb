describe "ruby on rails" do
  it "1 form", :aggregate_failures do
    expect("ruby on rails").to start_with("ruby").and end_with("rails")
  end
  it "2 form", aggregate_failures: true do
    expect("ruby on rails").to start_with("ruby").and end_with("rails")
  end
  it '3 form' do
    aggregate_failures do
      expect("ruby on rails").to start_with("ruby").and end_with("rails")
    end
  end
end