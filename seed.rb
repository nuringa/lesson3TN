class Seed
  attr_reader :stations, :trains, :routes
  def initialize
    @stations = []
    @trains = []
    @routes = []

    6.times do
      @stations << Station.new(%w(a b c d).sample + %w(l m n o p).sample + %w(1 2 3 4 5).sample)
    end

    @trains << CargoTrain.new('Cargo1') << PassengerTrain.new('Passenger1')
    @routes << Route.new(stations.first, stations.last)

    @routes.first.add_midway_station(stations[1])
    @routes.first.add_midway_station(stations[2])
  end
end