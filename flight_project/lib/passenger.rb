class Passenger

attr_reader :name


    def initialize(name)
        @name = name
        @flight_numbers = []

    end

    def has_flight?(flight_number)
        if @flight_numbers.include?(flight_number.upcase)
            return true
        else
            return false
        end
    end

    def add_flight(flight_number)
        if !has_flight?(flight_number)
            @flight_numbers << flight_number.upcase
        else
            puts "This flight has already been added."
            return true
        end
    end

end