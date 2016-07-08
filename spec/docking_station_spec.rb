require 'docking_station'

describe DockingStation do

  describe '#dock(bike)'
   it 'docks something' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bikes).to include(bike)
   end
   it 'returns error when docking station is full' do
     20.times { subject.dock Bike.new }
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
