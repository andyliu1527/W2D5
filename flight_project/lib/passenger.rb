class Passenger

    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flight_number)
        return @flight_numbers.include?(flight_number.upcase)
    end

    def add_flight(flight_number)
        flight = flight_number.upcase
        if !has_flight?(flight)
            @flight_numbers << flight
        end
    end
end