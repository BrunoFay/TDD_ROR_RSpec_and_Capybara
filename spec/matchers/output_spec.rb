describe "output matchers" do
  context 'stdout' do
    it { expect{puts "bruno"}.to output.to_stdout }
    it { expect{print "bruno"}.to output("bruno").to_stdout } #puts add an break line in the end of command
    it { expect{print "bruno"}.to output(/bru/).to_stdout }
  end

  context 'stderr' do
    it { expect{ warn("Credit card expired!")}.to output.to_stderr }
    it { expect{ warn("Credit card expired!")}.to output("Credit card expired!\n").to_stderr }
    it { expect{ warn("Credit card expired!")}.to output(/expired!/).to_stderr }

  end

end