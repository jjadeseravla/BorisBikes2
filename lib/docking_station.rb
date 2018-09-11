require_relative 'bike'

class DockingStation
  def initialize
    # attr_reader :bike #make sure any instances of this docking station class have a bike
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    @bikes << bike #<< add to the end of this array
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
