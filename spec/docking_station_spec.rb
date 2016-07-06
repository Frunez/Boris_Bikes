require 'docking_station.rb'

describe DockingStation do
  #expect(obj).to respond_to(:foo).with(1).argument
  it { is_expected.to respond_to(:docked).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'returns docked bike' do
    bike = Bike.new
    subject.docked(bike)
    expect(subject.bike).to eq bike
  end

  it 'docks the bike' do
    bike = Bike.new

    expect(subject.docked(bike)).to eq bike
  end

  it { expect(DockingStation.new.respond_to? "release_bike").to eq true }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
