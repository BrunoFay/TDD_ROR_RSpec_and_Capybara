$counter = 0


describe 'let' do
  let(:counter) { $counter += 1}
  it('cache value') do
    expect(counter).to eql(1)
    expect(counter).to eql(1)
  end

  it "don't persist value between tests" do
    expect(counter).to eql(2)
  end
end