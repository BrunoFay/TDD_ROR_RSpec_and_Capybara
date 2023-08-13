require "calculator"

describe "Error matcher" do
  let(:calc){ Calculator.new }
  #use blocks when error occurs inside methods
  it "by message" do
    expect{ calc.divide(3,0) }.to raise_error("divided by 0")
  end
  it "by message and type" do
    expect{ calc.divide(3,0) }.to raise_error(ZeroDivisionError, "divided by 0")
  end
  it "by type" do
  expect{ calc.divide(3,0) }.to raise_error(ZeroDivisionError)
  end
  it "by match" do
    expect{ calc.divide(3,0) }.to raise_error(/divided/)
  end
end