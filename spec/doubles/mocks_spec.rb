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
end