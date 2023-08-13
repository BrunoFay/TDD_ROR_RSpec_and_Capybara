require "person"

describe "" do
  it "have_attributes" do
    bruno = Person.new
    bruno.name = "bruno alves fay"
    bruno.age = 27
    expect(bruno).to have_attributes(name: starting_with("bruno"), age: be(27))
  end
end