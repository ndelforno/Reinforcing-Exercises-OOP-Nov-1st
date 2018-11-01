class Trip

  def initialize()
    @destinations = []
  end

  def destinations=()
    @destinations
  end

  def destinations()
    @destinations
  end


  def add_destination(destination)
    @destinations << destination
  end

  def displaytrip
    puts "Began trip."
    @destinations.each_with_index do |dest, index|
      break if index == self.destinations.length - 1
      puts "Traveled from #{dest.name} to #{self.destinations[index + 1].name}"
    end
    puts "Ended trip."
  end

end


class Location

  def initialize(name)
    @name = name
  end

  def name()
    @name
  end

end

dest1 = Location.new ('Toronto')
dest2 = Location.new ('London')
dest3 = Location.new ('Hamilton')
dest4 = Location.new ('St catherine')
dest5 = Location.new ('Detroit')
dest6 = Location.new ('Buffalo')

trip1 = Trip.new
trip1.add_destination(dest1)
trip1.add_destination(dest2)
trip1.add_destination(dest3)
trip1.add_destination(dest4)
trip1.add_destination(dest5)
trip1.add_destination(dest6)

trip1.displaytrip
