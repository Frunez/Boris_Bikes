require 'docking_station.rb'

describe DockingStation do

  it { expect(DockingStation.new.respond_to? "release_bike").to eq true }

describe Bike do
  it {expect(Bike.new.respond_to? "working?").to eq true}
end
end
