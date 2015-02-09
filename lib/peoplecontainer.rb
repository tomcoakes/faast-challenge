module PeopleContainer

attr_reader :capacity

  def board(passenger)
    raise "The train is full. Wait for the next one!" if passenger_count == capacity
    passengers << passenger
  end

  def alight(passenger)
    passengers.delete(passenger)
  end

  def passengers
    @passengers ||= []
  end

  def passenger_count
    passengers.length
  end

end