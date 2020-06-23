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

  it 'frequency change to upper limit if above' do
    expect(subject.filter([1001])).to eq [1000]
  end

  it 'frequencies change to provided upper limit if above' do
    expect(subject.filter([2000, 800], 40, 1500)).to eq [1500, 800]
  end

  it 'returns frequencies within default limit if not provided' do
    expect(subject.filter([10, 2000])).to eq [40, 1000]
  end

  it 'only changes values outside limits' do
    expect(subject.filter([10, 45, 100, 1001], 40, 1000)).to eq [40, 45, 100, 1000]
  end
end
