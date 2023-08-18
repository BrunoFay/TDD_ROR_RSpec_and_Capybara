describe "ruby on rails" do
  it{ is_expected.to start_with("ruby").and end_with("rails") }
  it { expect(fruit).to eq('orange').or eq('banana').or eq('apple') }

end