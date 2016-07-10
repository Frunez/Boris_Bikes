require 'docking_station'

describe DockingStation do
let(:bike) {double :bike}
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

   it 'returns error when docking station is full' do
     subject.capacity.times { subject.dock Bike.new }
     expect{subject.dock(Bike.new)}.to raise_error('Docking station is full')
   end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = double(:bike, broken?: false)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when no bikes are available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
    it 'raises error if bike is reported broken' do
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  it 'docking bike at station' do
    is_expected.to respond_to(:dock).with(1).argument
  end
end
