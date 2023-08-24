require 'student'
require 'course'

describe 'Stub test' do
  it 'has finished' do
    student = Student.new
    course = Course.new
    allow(student).to receive(:has_finished?)
                        .with(an_instance_of(Course))
                        .and_return(true)
    finished_course = student.has_finished?(course)
    expect(finished_course).to be_truthy
  end

  it 'has_completed' do
    course = Course.new
    allow(course).to receive(:name).and_return('Math')
    allow(course).to receive(:has_completed?).and_return(false)
    expect(course.name).to eql('Math')
    expect(course.has_completed?).to be_falsey
  end

end