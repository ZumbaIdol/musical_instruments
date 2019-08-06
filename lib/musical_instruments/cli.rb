# CLI Controller
class CLI
  
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
    @guitars = Guitars.catalog
    @guitars.each.with_index(1) do |guitar, i|
      puts ""
      puts "*** #{i}. #{guitar.name} - #{guitar.price} ***"
      puts ""
    end
  end
end
  
  def catalog
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of the guitar you would like more info about, cat to see \nthe catalog again, or type exit:"
      puts ""
      input = gets.strip.downcase
      
      if input.to_i > 6 && input.to_i < 47
        the_guitar = @guitars[input.to_i - 1]
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
  #end
  
  def next_time
    puts ""
    puts "---------- See you next time and thanks for stopping by! ----------"
    puts ""
  end
end

