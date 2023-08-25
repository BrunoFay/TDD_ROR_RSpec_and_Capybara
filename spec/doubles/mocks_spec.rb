require 'student'

#mock are used to test a behavior and stub are used to change a behavior

describe 'Mocks' do
  it 'call method' do
    #setup
    student= Student.new
    #verify
    expect(student).to receive(:gender).with('male')
    #exercise
    student.gender('male')
  end
  context 'call repeat method' do
    it 'once/twice' do
      student= Student.new
      expect(student).to receive(:gender).with('male').once
      student.gender('male')
      expect(student).to receive(:gender).with('male').twice
      student.gender('male')
      student.gender('male')
    end

    it 'exactly' do
      student= Student.new
      expect(student).to receive(:gender).with('male').exactly(3).times
      student.gender('male')
      student.gender('male')
      student.gender('male')
    end

    it 'at_least' do
      student= Student.new
      expect(student).to receive(:gender).with('male').at_least(:once)
      student.gender('male')
    end
    it "at_least time" do
      student= Student.new
      expect(student).to receive(:gender).with('male').at_least(5).times
      student.gender('male')
      student.gender('male')
      student.gender('male')
      student.gender('male')
      student.gender('male')
      student.gender('male')
    end
  end

  it 'mock return' do
    student= Student.new
    expect(student).to receive(:gender).and_return('555+558-*55-')
    puts student.gender('male') # and_return stub return from method for any value
  end
end