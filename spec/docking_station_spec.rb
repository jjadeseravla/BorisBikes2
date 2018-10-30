require 'docking_station'

describe 'initialization' do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::FULL_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error 'Docking station full'
  end
end

describe DockingStation do
  describe '#release_bike' do
    let(:bike) { double :bike}
    it 'releases a working bike' do
      #bike = Bike.new
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end

    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
 end

 describe '#dock(bike)' do
    it 'returns docked bikes' do
      bike = Bike.new
      # subject.dock(bike)
      expect(subject.dock(bike)).to eq [bike]
    end


    it 'raises an error when bike is broken so cant release from docking station' do
      bike = double(:bike)
      allow(bike).to receive(:broken?).and_return(true)
      # bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error("no working bikes available")
    end
  end
end
