require 'bandpass'

describe Bandpass do

  it 'filter method returns array values' do
    expect(subject.filter([50])).to eq [50]
  end

  it 'changes frequencies up to lower limit if below' do
    expect(subject.filter([10])).to eq [40]
  end

end