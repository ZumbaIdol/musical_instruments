# CLI Controller
class MusicalInstruments::CLI
  
  def call
    puts "Welcome to My-Music!"
    list_instruments
    catalog
  end
  
  def list_instruments
    puts "Musical instruments for sale:"
    @instruments = MusicalInstruments::Instruments.instrument
    @instruments.each.with_index(1) do |instrument, i|
      puts "#{i}. #{instrument.name} - #{instrument.price} - #{instrument.availability}"
    end
  end
  
  def catalog
    input = nil
    while input != "exit"
      puts "Enter the number of the instrument for a description, cat to see the catalog again, or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        the_instrument = @instruments[input.to_i - 1]
        puts "#{the_instrument.name} - #{the_instrument.price} - #{the_instrument.availability}"
      elsif input == "cat"
        list_instruments
      elsif input == "exit"
        next_time
      else
        puts "I don't understand your answer; please type a number for the instrument, cat, or exit"
      end
    end
  end
  
  def next_time
    puts "See you next time and thanks for stopping by!"
  end
end

