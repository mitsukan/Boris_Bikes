class DockingStation

  attr_reader :bike

  def release_bike
    fail
  end

  def dock(bike)
    @bike = bike
  end

end
