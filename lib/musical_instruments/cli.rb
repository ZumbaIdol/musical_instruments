# CLI Controller
class MusicalInstruments::CLI
  
  def call
    MusicalInstruments::Scraper.new.scrape_guitar_list
    puts ""
    puts "--------------------"
    puts "Welcome to My-Music!"
    puts "--------------------"
    puts ""
    list_guitars
    catalog
  end
  
  def list_guitars
    puts ""
    puts "********** Electric Guitars for sale **********"
    puts ""
    MusicalInstruments::Guitars.all.each.with_index(1) do |guitar, i|
      puts ""
      puts "--- #{i}. #{guitar.name} ---"
      puts ""
    end
  end
end
  
  def catalog
    input = nil
    while input != "exit"
      puts ""
      puts "Which guitar you would like more info about? Type the number of the guitar for a description and price, cat to see \nthe catalog again, or exit:"
      puts ""
      input = gets.strip.downcase
      guitar = MusicalInstruments::Guitars.all[input.to_i]
     
      
      if input.to_i > 1 && input.to_i < 54
        the_guitar = MusicalInstruments::Guitars.all[input.to_i - 1]
        self.get_details
        puts ""
        puts "#{the_guitar.name} -\n #{the_guitar.description} -\n #{the_guitar.price}"
        puts ""
      elsif input == "cat"
        list_guitars
      elsif input == "exit"
        self.next_time
      else
        puts ""
        puts "): I don't understand your answer :("
        puts ""
      end
    end
  
  def self.next_time
    puts ""
    puts "---------- See you next time and thanks for stopping by! ----------"
    puts ""
  end
end

