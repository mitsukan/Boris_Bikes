class DockingStation

  attr_reader :bike

  def release_bike

    fail "No bikes available"
  end

  def dock(bike)
    return fail "Docking station full" if @bike == bike
    @bike = bike
  end

end
