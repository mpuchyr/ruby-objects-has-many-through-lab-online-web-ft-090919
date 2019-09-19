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
  
  def new_appointment(patient, date)
    appt = Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
  
  def patients
    doc_appts = []
    appointments.each {|appt| doc_appts << appt.patient}
    doc_appts
  end
  
end