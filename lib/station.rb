require_relative 'peoplecontainer'

class Station
  include PeopleContainer

  def initialize
    @capacity = 500
  end

  def enter_station(passenger)
    passengers << passenger
  end
end