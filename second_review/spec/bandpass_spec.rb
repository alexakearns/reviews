require 'bandpass'

describe Bandpass do

  it 'filter method returns array values' do
    expect(subject.filter([50])).to eq [50]
  end

  it 'changes frequencies up to lower limit if below' do
    expect(subject.filter([10])).to eq [40]
  end

  it 'each frequency changed to lower limit if below value' do
    expect(subject.filter([10, 50])).to eq [40, 50]
  end

  it 'frequency changed to provided lower limit if below' do
    expect(subject.filter([5, 60], 10)).to eq [10, 60]
  end

end