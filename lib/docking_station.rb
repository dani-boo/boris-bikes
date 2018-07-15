require 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end
  
  def release_bike
    fail 'There are no bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'No more space - docking station is full' if full?
    @bikes << bike
  end

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
