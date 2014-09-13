class MaximumDistanceCalculator

  def initialize(number_of_inputs, number_of_speeds=[], number_of_fuel_consumptions=[], total_fuel_available)
    @number_of_inputs = number_of_inputs.to_f
    @total_fuel_available = total_fuel_available.to_f
    @speeds_fuel_consumptions = {}
    number_of_inputs.times do |i|
        @speeds_fuel_consumptions[number_of_speeds[i].to_f] = number_of_fuel_consumptions[i].to_f
    end
    @maximum_distance = 0.0
  end

  def calculate_maximum_distance

    @speeds_fuel_consumptions.each_pair do |key, value|
      if ((@total_fuel_available/value).to_f * key) > @maximum_distance
        @maximum_distance = (@total_fuel_available/value).to_f * key
      end
    end

    return @maximum_distance
  end
end

maximum_distance_calculator = MaximumDistanceCalculator.new(6, [250, 240, 230, 220, 210, 211], [5000, 4500, 4000, 3500, 3000, 3000], 50000)

puts "The Maximum Distance That You can cover: #{maximum_distance_calculator.calculate_maximum_distance()}"
