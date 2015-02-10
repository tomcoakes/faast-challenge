module PeopleContainer

attr_reader :capacity

  def board_from(station_or_coach)
    raise "We've reached maximum capacity!" if passenger_count == capacity
    passengers << station_or_coach.remove_passenger
  end

  def alight_from(station_or_coach)
    passengers.delete(station_or_coach.add_passenger)
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