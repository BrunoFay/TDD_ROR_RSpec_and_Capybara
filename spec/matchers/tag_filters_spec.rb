require 'person'

# rspec -t person:james
describe 'Person with tag filter', person:'james' do
  subject(:person){Person.new}
  it 'name' do
    person.name = 'james'
    expect(person.name).to satisfy 'name to capitalize' do |name|
      name.capitalize == 'James'
    end
  end
  it 'is adult' do
    person.age = 18
    expect(person.is_adult).to match(/is an adult/)
  end
end

# rspec -t happy:true
# rspec -t sad

describe 'status' do
  before(:all) do
    @person = Person.new
    @person.age= 43
    @person.name = 'camille'
  end
  it 'happy', happy: true do
    @person.happy!
    expect(@person.status).to match(/Happy/)
  end
  it 'sad', :sad do
    @person.sad!
    expect(@person.status).to match(/Sad/)
  end
end

# add --tag type:name in .rspec file to run this group when use only rspec command
# add --tag ~type:name in .rspec file to exclude this group when use only rspec command
