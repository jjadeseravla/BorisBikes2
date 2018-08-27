require_relative 'bike'

class DockingStation
  attr_reader :bike #make sure any instances of this docking station class have a bike

  def dock(bike)
    fail 'Docking station is full' if @bike
    @bike = bike #instance variable to store the bike in the 'state' of this instance
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

end
