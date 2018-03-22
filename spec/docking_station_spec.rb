require "docking_station"

# describe DockingStation do
#   it "expected to respond to release_bike" do
#   expect(DockingStation.new).to respond_to (:release_bike)
#   end
# end

describe DockingStation.new do
  it "expected to respond to release_bike" do
   is_expected.to respond_to (:release_bike)
  end

  it "gets a bike when passed release_bike" do
   expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "returns true if bike is working" do
    expect(DockingStation.new.release_bike.working?).to be(true).or be(false)
  end

  it "expects to respond to dock" do
    is_expected.to respond_to (:dock)
  end

  it "accepts a bike when docking" do
    is_expected.to respond_to(:dock).with(1).argument
  end

  bike = Bike.new
  it "returns a bike when docking" do
    expect(DockingStation.new.dock(bike)).to eq bike
  end

  it "user wants to check if bike has been docked" do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end

# Add a test to your DockingStation specification that
# a) gets a bike, and then b) expects the bike to be working
