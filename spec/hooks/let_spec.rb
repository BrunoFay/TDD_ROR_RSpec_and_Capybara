$counter_let = 0 # was changed the name because $counter in let bang was updated this value

describe 'let' do
  let(:counter) { $counter_let += 1}
  it('cache value') do
    expect(counter).to eql(1)
    expect(counter).to eql(1)
  end

  it "don't persist value between tests" do
    expect(counter).to eql(2)
  end
end