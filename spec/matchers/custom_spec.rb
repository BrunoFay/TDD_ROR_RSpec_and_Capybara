RSpec::Matchers.define :be_a_multiple_of do |input|
  #input == 3
  # actual == subject == 18
  match do |actual|
    actual % input == 0
  end
  description do
    "the #{input} is a multiple <<<<<"
  end

  failure_message do |actual|
    "shit! #{actual} not a multiple of #{input}"
  end
end

describe 18, 'Custom matchers' do
  it{ is_expected.to be_a_multiple_of(3)}
end