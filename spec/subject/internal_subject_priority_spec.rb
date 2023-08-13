require 'string_default'

RSpec.describe String do
  describe StringDefault do
    it "default string message" do
      expect(subject).to eq("hello world")
    end
  end
end