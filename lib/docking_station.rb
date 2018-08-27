require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike #instance variable to store the bike in the 'state' of this instance
  end

  def bike
    @bike
  end
end
