require 'bandpass'

describe Bandpass do

  it 'filter method returns array values' do
    expect(subject.filter([50])).to eq [50]
  end

end