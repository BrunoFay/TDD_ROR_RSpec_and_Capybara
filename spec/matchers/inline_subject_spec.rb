describe (1..5), 'Ranges' do
  it {is_expected.to cover 1}
  it {is_expected.to cover 2,5 }
  it {is_expected.to_not cover 11,22}
end