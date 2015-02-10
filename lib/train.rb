class Train

  def attach_coach(coach)
    raise "You can't connect any more coaches." if attached_coaches.length == 5
    attached_coaches << coach
  end

  def detach_rear_coach
    attached_coaches.pop
  end

  def attached_coaches
    @attached_coaches ||= []
  end

end