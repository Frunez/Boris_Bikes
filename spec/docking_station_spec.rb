require 'docking_station'

describe DockingStation do

  describe '#initialize' do
    it 'sets capacity to eq passed argument' do
      capacity = 50
      docking_station = DockingStation.new(capacity)
      expect(docking_station.capacity).to eq capacity
    end
    it 'sets capacity of a docking station' do
      expect(subject.capacity).to eq   DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#dock(bike)'
   it 'docks something' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bikes).to include(bike)
   end
   it 'returns error when docking station is full' do
     subject.capacity.times { subject.dock Bike.new }
     expect{subject.dock(Bike.new)}.to raise_error('Docking station is full')
   end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when no bikes are available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it 'docking bike at station' do
    is_expected.to respond_to(:dock).with(1).argument
  end


  it {is_expected.to respond_to(:bikes)}


end
