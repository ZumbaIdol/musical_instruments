# CLI Controller
class MusicalInstruments::CLI
  
  def call
    puts ""
    puts "--------------------"
    puts "Welcome to My-Music!"
    puts "--------------------"
    puts ""
    list_instruments
    catalog
  end
  
  def list_instruments
    puts ""
    puts "********** Musical Instruments for sale **********"
    puts ""
    @instruments = MusicalInstruments::Instruments.cataolog
    @instruments.each.with_index(1) do |instrument, i|
      puts ""
      puts "*** #{i}. #{instrument.name} - #{instrument.price} ***"
      puts ""
    end
  end
  
  def catalog
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of the instrument you would like more info about, cat to see the catalog again, or type exit:"
      puts ""
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_instrument = @instruments[input.to_i - 1]
        puts ""
        puts "#{the_instrument.name} - #{the_instrument.price}"
        puts ""
        puts "For more info, type descrip"
        puts ""
      elsif input == "descrip"
        puts ""
        puts "********** Description **********"
        puts ""
        puts "#{the_instrument.description}"
        puts ""
      elsif input == "cat"
        list_instruments
      elsif input == "exit"
        next_time
      else
        puts ""
        puts "I don't understand your answer..."
        puts ""
      end
    end
  end
  
  def next_time
    puts ""
    puts "---------- See you next time and thanks for stopping by! ----------"
    puts ""
  end
end

