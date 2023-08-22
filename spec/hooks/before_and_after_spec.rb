require 'person'

describe Person do
  before(:all) do
    @person = Person.new
  end
  before do
    @person.name = 'bruno'
  end

  context 'is adult?' do
    before :example do
      @person.age = 27
    end

    it 'message' do
      expect(@person.is_adult).to eql("bruno is an adult")
    end

    it 'age' do
      expect(@person.age).to eql(27)
    end
  end

  context 'is child?' do
    before :all do
      @person.age = 13
    end
    it 'message' do
      expect(@person.is_adult).to eql("bruno is a child")
    end
    it 'age' do
      expect(@person.age).to eql(13)
    end
  end
end