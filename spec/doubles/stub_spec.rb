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

  it 'dynamic params' do
    student = Student.new
    allow(student).to receive(:gender) do |arg|
      if arg == 'male'
        'he/his'
      elsif arg == 'female'
        'she/her'
      else
        'fluid'
      end
    end
    expect(student.gender('female')).to eql('she/her')
    expect(student.gender('male')).to eql('he/his')
    expect(student.gender('liniker')).to eql('fluid')
  end

  it 'allow any instance of' do
    bruno = Student.new
    alessandra = Student.new
    allow_any_instance_of(Student).to receive(:has_finished?)
                                        .with('English')
                                        .and_return(true)
    expect(bruno.has_finished?('English')).to be_truthy
    expect(alessandra.has_finished?('English')).to be_truthy
  end

  it('errors') do
    student = Student.new
    allow(student).to receive(:has_finished?).with('').and_raise("shit, that's a bug")
    expect{student.has_finished?('')}.to raise_error("shit, that's a bug")
    end
  end