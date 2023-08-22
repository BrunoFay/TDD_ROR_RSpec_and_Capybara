require 'person'

describe Person do
  before(:all) do
    @person = Person.new
    @person_ages = Array.new
  end
  around(:example) do |test|
    @person.age = rand(23)
    @person_ages << @person.age
    test.run
    @person_ages << '7 luas'
  end
  it 'size 1' do
    expect(@person_ages.size).to satisfy 'has only an element' do |d|
      d == 1
    end
  end
  it ' size 3' do
    @person_ages.each { |age| puts age }
    expect(@person_ages.size).to eql(3)
    expect(@person_ages[1]).to eql('7 luas')
  end

end