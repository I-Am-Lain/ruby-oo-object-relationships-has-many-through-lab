require_relative "patient.rb"
require_relative "doctor.rb"


class Appointment
    attr_reader :name, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end



end
