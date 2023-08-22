RSpec::Matchers.define_negated_matcher :exclude,:include
RSpec::Matchers.define_negated_matcher :not_eql,:eql

describe Array.new([1,24,5,6]), "Array matchers" do
  context 'include and exclude' do
    it { expect(subject).to include(1) }
    it { expect(subject).to exclude(22) }
  end

  context 'not eql' do
    it{expect(2+2).to not_eql(5)}
  end

end