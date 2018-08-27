require_relative 'bike'

class DockingStation
  attr_reader :bike #make sure any instances of this docking station class have a bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike #instance variable to store the bike in the 'state' of this instance
  end

end
