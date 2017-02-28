class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activity
    return "This student is currently active." if self.active
    "This student is currently inactive."
  end

  def activity_swap
    self.active ? self.active = false : self.active = true
  end
end
