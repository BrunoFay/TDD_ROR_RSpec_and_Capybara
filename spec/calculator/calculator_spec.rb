require 'calculator'
require 'rspec/matchers/fail_matchers'
RSpec.configure do |config|
  config.include RSpec::Matchers::FailMatchers
end

RSpec.describe Calculator, "Calculator" do
  subject(:calculator) { described_class.new }
  context '#sum' do
    it('valid params') do
      sum = calculator.sum(4,5)
      expect(sum).to eql(9)
    end
    it('invalid params') do
      result = calculator.sum(2,'5')
      expect(result).to eql("sum function only accept numbers")
    end
  end
end