# CLI Controller
class MusicalInstruments::CLI
  
  def call
    puts "Welcome to My-Music!"
    list_instruments
    catalog
    next_time
  end
  
  def list_instruments
    puts "Musical instruments for sale:"
    puts <<-DOC.gsub /^\s*/, ''
    1. Roland RD-2000 88-key Stage Piano, $2399.99
    2. Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural, $2149.99
    3. Maharaja Tabla Drum Set- Buy 3KG Black Brass Bayan, Finest Dayan with Book, Hammer, Cushions and Cover (PDI-EA)- $285.00
    4. Cremona SV-500 Series Violin Outfit, $399.99
    DOC
  end
  
  def catalog
    input = nil
    while input != "exit"
      puts "Enter the number of the instrument for a description, cat to see the catalog again, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Description for instrument 1..."
      when "2"
        puts "Description for instrument 2..."
      when "3"
        puts "Description for instrument 3..."
      when "4"
        puts "Description for instrument 4..."
      when "cat"
        list_instruments
      end
    end
  end
  
  def next_time
    puts "See you next time and thanks for stopping by!"
  end
end

