class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    appt = Appointment.new(date, patient, self)
    appt
  end
  
  def appointments
    Appointment.select {|appt| appt.doctor == self}
  end
  

end