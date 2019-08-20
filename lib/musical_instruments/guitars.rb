class MusicalInstruments::Guitars
  attr_accessor :name, :url, :detail, :price
  
    @@all = []
    
  def initialize(name=nil, url=nil, detail=nil, price=nil)
    @name = name
    @url = url
    @detail = detail
    @price = price
    @@all << self
  end
  
   
  def self.all
    @@all
  end
  
  
  #create a method that returns all of the guitars by the name passed through method
  #method is going to accept an argument of a name
  #find the guitar that matches that name 
  
  def self.find_guitar_by_name(name)
    @@all.find{|guitar| guitar.name == name}
  end 
end