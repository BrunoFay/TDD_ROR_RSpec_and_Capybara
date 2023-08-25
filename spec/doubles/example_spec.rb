describe 'Test double ' do
  it 'received message' do
    person = double
    allow(person).to received_message?(name: 'bruno', age: 22)
  end
  it 'receive and return' do
    person = double
    allow(person).to receive(:name).and_return('plj diego')
    allow(person).to receive(:age).and_return(12)
  end
  it 'as null obj' do
    animal = double(:lizard).as_null_object
    allow(animal).to receive(:type).and_return('reptile')
    allow(animal).to receive(:is_dangerous?).and_return(true)
    animal.can_fly? # this method will break the test if as_null_object wasn't set
  end
end