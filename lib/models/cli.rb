class CommandLineInterface

  def greet
    puts "Welcome to TrainFinder, the command line solution to for your MTA train-finding needs!"
  end

  def gets_user_input
    puts "We can help you find which train lines are available at NYC subway stations."
    puts "Enter a subway station to get started:"
    #what could we put here to allow a user to type a response?
    input = gets.chomp
  end

  def find_station(input)
    Station.find_by(name: input)
  end

  def find_lines(value)
    value.station_lines
    # StationLine.find_by(station_id: station.id)
  end

  def show_lines(lines)
    array = lines.map do |line|
    line.station_lines
    #how could we output each line's name here?
    end
    "Here are the Trains #{array}"
  end

  def run_again
    puts "Would you like to run another search? Y/N"
    input = gets.chomp
  end

  def run
    greet
    rerun = "Y"
    while rerun = "Y"
      input = gets_user_input
      value = find_station(input)
      lines = find_lines(value)
      show_lines(lines)
      answer = run_again
      if answer != "Y"
        break
      end
    end

  end
end
