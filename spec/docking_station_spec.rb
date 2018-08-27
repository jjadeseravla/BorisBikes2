require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
 end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    # it 'should not allow you to release bikes if none are available' do
    #   bike = Bike.new
    #   bike2 = Bike.new
    #   expect(bike2).to raise_error("Not enough bikes in docking station")
    # end
end
