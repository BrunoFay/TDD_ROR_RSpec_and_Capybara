require 'person'

shared_examples 'status' do |feeling|
  it "#{feeling}" do
    person.send("#{feeling}!")
    expect(person.status).to eql("Feeling #{feeling.capitalize}!")
  end
end

describe 'Person' do
  subject(:person) {Person.new}
  include_examples 'status', :happy #don't describe the test in terminal
  it_behaves_like 'status', :sad
  it_should_behave_like 'status', :excited
  # context 'status' do
  #   it "happy" do
  #     person.happy!
  #     expect(person.status).to eql('Feeling Happy!')
  #   end
  #   it "sad" do
  #     person.sad!
  #     expect(person.status).to eql('Feeling Sad!')
  #   end
  #   it "excited" do
  #     person.excited!
  #     expect(person.status).to eql('Feeling Excited!')
  #   end
  # end
end