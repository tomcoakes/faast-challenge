module PeopleContainer

  COACH_CAPACITY = 40

  def board(passenger)
    raise "The train is full. Wait for the next one!" if passenger_count == COACH_CAPACITY
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