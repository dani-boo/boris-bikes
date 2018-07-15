require 'docking_station'

describe DockingStation do

	# basic method response tests
	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bikes }

  # connect Bike's working method with release_bike
  describe "#working?" do
    it 'only releases bikes that work' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end 
  end

  # release bike
  describe "#release_bike" do
    # no bikes available should raise error message - don't call Bike.new!
    it 'raises error if no bikes are available' do
      expect {subject.release_bike}.to raise_error("Sorry, this docking station is empty")
    end

    it 'releases a bike if available' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  # station's default capacity
  it 'reverts to default capacity if none is given' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  # different/larger capacity
  it 'uses client\'s chosen capacity if argument (number) is given' do
    expect(DockingStation.new(50).capacity).to eq 50
  end

  # dock
  describe "#dock" do
    it 'will dock bikes until station reaches capacity' do
      subject.capacity.times {subject.dock(Bike.new)}
      expect(subject.bikes.length).to eq subject.capacity
    end

    it 'raises error if user tries to dock bike when station is at capacity' do
      subject.capacity.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new).to raise_error("No more space - docking station is full")}
    end
  end
end
