class Passenger

  def board_train(coach, station)
    coach.push(station.delete(self))
  end

  def alight(coach, station)
    coach.delete(station.push(self))
  end

  def enter_station(station)
    station.push(self)
  end

  def leave_station(station)
    station.delete(self)
  end

end