require_relative 'bike'

class DockingStation
  def initialize
    # attr_reader :bike #make sure any instances of this docking station class have a bike
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full' if @bikes.count >= 20
    @bikes << bike #<< add to the end of this array
  end

end
