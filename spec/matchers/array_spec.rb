describe Array.new([1,24,5,6]), "Array matchers" do
  #that matchers work independent of the elements order
  it "#include" do
    expect(subject).to include(1)
    expect(subject).to include(1,6,24)
  end
  it "#contain_exactly" do
    expect(subject).to contain_exactly(1,24,5,6)
  end
  it "#match_array" do
    expect(subject).to match_array([24,1,5,6])
  end
end