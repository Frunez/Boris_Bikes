require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20


  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full' if full?
    if bike.broken? == true
      @broken_bikes << bike
    else @bikes << bike
    end
  end

  private

  attr_reader :bikes
  attr_reader :broken_bikes

  def full?
    @bikes.count >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end
end
