$counter = 0

describe "let!" do
  arr = []
  let!(:counter) do # let! force an exec before test and an exec when it's called
    arr << :let
    $counter += 1
  end
  it("call helper method before test") do
    arr << :example
    expect(arr).to eql([:let,:example])
    expect(counter).to eql(1)
  end
end