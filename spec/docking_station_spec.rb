require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    # return the bike we dock
    expect(subject.bike).to eq bike
    # { is_expected.to respond_to(:dock).with(1).argument }
  end
  # it { is_expected.to respond_to :bike }
  
end
