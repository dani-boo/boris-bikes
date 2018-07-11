class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def bike
  end
  
  def dock(bike)
    # return the bike we dock
    @bike = bike
  end

  def bike
    @bike
  end
end
