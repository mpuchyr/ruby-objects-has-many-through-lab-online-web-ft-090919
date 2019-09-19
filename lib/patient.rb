class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end
  
  def doctors
    docs = []
    appointments.each {|appt| docs << appt.doctor}
    docs
  end
  
  

end