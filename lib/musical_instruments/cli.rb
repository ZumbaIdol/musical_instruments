# CLI Controller
class MusicalInstruments::CLI
  
  def call
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
    guitars = MusicalInstruments::Scraper.scrape_guitar_list
    guitars.each.with_index(1) do |guitar, i|
      puts ""
      puts "*** #{i}. #{guitar.name} ***"
      puts ""
    end
  end
end
  
  def catalog
    input = nil
    while input != "exit"
      puts ""
      puts "Which guitar you would like more info about? Type the number for the guitar, cat to see \nthe catalog again, or exit to close the program:"
      puts ""
      input = gets.strip.downcase
      guitar = MusicalInstruments::Guitars.find(input.to_i)
     
      
      if input.to_i > 6 && input.to_i < 47
        the_guitar =Guitars.all[input.to_i - 1]
        puts ""
        puts "#{the_guitar.name}"
        puts ""
        puts "For more info, type descrip"
        puts ""
      elsif input == "descrip"
        puts ""
        puts "********** Description **********"
        puts ""
        puts "#{the_guitar.description} -\n #{the_guitar.price}"
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
  
  def next_time
    puts ""
    puts "---------- See you next time and thanks for stopping by! ----------"
    puts ""
  end
end

