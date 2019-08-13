# CLI Controller
class MusicalInstruments::CLI
  
  def call
    MusicalInstruments::Scraper.scrape_guitar_list
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
    puts "********** Electric Guitars and Accessories for sale **********"
    puts ""
    MusicalInstruments::Guitars.all.each.with_index(1) do |guitar, i|
      puts ""
      puts "--- #{i}. #{guitar.name} ---"
      puts ""
    end
  end
  
  def catalog
    input = nil
    while input != "exit"
      puts ""
      puts "Which guitar and/or would you like more info about? Type the number of the item for details and a price, cat to see \nthe catalog again, or exit:"
      puts ""
      input = gets.strip.downcase
      
      if input.to_i > 0 && input.to_i < 46
        the_guitar = MusicalInstruments::Guitars.all[input.to_i - 1]
        MusicalInstruments::Scraper.guitar_details(the_guitar)
        puts ""
        puts "#{the_guitar.name} -\n  #{the_guitar.price} \n#{the_guitar.detail}"
        puts ""
      elsif input == "cat"
        list_guitars
      elsif input == "exit"
        next_time
      else
        puts ""
        puts "): I don't understand your answer :("
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