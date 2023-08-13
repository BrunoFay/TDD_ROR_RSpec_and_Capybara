require 'string_default'

describe "Classes and types matchers " do
  let(:str) { StringDefault.new }

  context "be_instance_of" do
    #only accepts the original instance class
    it "be_instance_of" do
      expect(str).to_not be_instance_of(String)
      expect(str).to be_instance_of(StringDefault)
      expect(2).to be_instance_of(Integer)
    end
  end
  context "be_kind_of and be_a/be_an" do
    # accepts instances of inheritance
    it "instance of String" do
      expect(str).to be_kind_of(String)
      expect(str).to be_kind_of(StringDefault)
    end
    it "be_a" do
      expect(str).to be_a(String)
      expect(str).to be_a(StringDefault)
      expect(2).to be_a(Integer)
    end
    it "be_an" do
      expect(str).to be_an(String)
      expect(str).to be_an(StringDefault)
      expect(2).to be_an(Integer)
    end
  end

  context "respond_to" do
    it "success" do
      expect(2).to respond_to(:even?)
      expect("oiii").to respond_to(:size)
    end
  end

end