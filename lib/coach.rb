require_relative 'peoplecontainer'

class Coach
  include PeopleContainer

  def initialize
    @capacity = 40
  end

end