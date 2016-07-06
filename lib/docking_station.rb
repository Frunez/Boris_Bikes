require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  #def bike
  #  @bike
  #end

  attr_reader :bike

  def docked(bike)
    @bike = bike
  end

end
