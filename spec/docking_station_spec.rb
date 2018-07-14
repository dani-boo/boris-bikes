require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#release_bike' do
    it 'raises an error when empty' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases a bike' do 
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  
  describe '#dock' do
    it 'raises error if docking station is full' do
      subject.dock(Bike.new)
      expect {subject.dock Bike.new }. to raise_error 'No more space'
    end
  end
  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
