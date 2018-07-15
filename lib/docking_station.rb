require 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end
  
  def release_bike
    fail 'There are no bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'No more space - docking station is full' if @bikes.count >= 20
    @bikes << bike
  end
end
