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
end