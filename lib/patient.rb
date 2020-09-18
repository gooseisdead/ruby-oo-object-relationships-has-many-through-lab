class Patient
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end


    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.collect { |appointment| appointment.doctor }
    end
end 