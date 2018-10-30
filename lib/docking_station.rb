require_relative 'bike'

class DockingStation
  FULL_CAPACITY = 20

  # attr_accessor :capacity

  def initialize(capacity=FULL_CAPACITY)
    # attr_reader :bike #make sure any instances of this docking station class have a bike
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'no working bikes available' if @bikes.broken?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    @bikes << bike #<< add to the end of this array
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
