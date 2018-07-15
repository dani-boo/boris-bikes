require 'bike'

class DockingStation
  
	attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def dock(bike)
		fail "No more space - docking station is full" if full? 
		@bikes << bike
	end

	def release_bike
		fail "Sorry, this docking station is empty" if empty?		
		 @bikes.pop
	end

  private
  
	def full?
		@bikes.length >= @capacity
	end
	
	def empty?
		@bikes.empty?
	end	
end
