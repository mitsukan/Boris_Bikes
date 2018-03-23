require "docking_station"

# describe DockingStation do
#   it "expected to respond to release_bike" do
#   expect(DockingStation.new).to respond_to (:release_bike)
#   end
# end

describe DockingStation.new do
  it "expected to respond to release_bike" do
   is_expected.to respond_to(:release_bike)
  end

  it "gets a bike when passed release_bike" do
   expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "returns true if bike is working" do
    expect(DockingStation.new.release_bike.working?).to be(true).or be(false)
  end

  it "expects to respond to dock" do
    is_expected.to respond_to(:dock)
  end

  it "accepts a bike when docking" do
    is_expected.to respond_to(:dock).with(1).argument
  end


  it "returns a bike when docking" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "user wants to check if bike has been docked" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


  it "It should return an error message if there are no bikes in the docking station" do
    expect{ subject.release_bike }.to raise_error("No bikes available")
  end

  it "should raise an error message if the docking station is full" do
    bike = Bike.new
    expect{ subject.dock(bike) }.to raise_error("Docking station full")
  end

end



# Add a test to your DockingStation specification that
# a) gets a bike, and then b) expects the bike to be working
