module PeopleContainer

attr_reader :capacity

  def board_from(station)
    raise "We've reached maximum capacity!" if passenger_count == capacity
    passengers << station.remove_passenger
  end

  def alight_from(station)
    passengers.delete(station.add_passenger)
  end

  def remove_passenger
    passengers.pop
  end

  def add_passenger
    passengers.push
  end

  def passengers
    @passengers ||= []
  end

  def passenger_count
    passengers.length
  end

end