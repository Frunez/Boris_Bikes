require 'docking_station.rb'

describe DockingStation do

  it { expect(DockingStation.new.respond_to? "release_bike").to eq true }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
