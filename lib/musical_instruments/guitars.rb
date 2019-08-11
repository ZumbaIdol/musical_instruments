class MusicalInstruments::Guitars
  attr_accessor :name, :url, :detail, :price
  
    @@all = []
    
    def initialize(name=nil, url=nil, description=nil, price=nil)
    @name = name
    @url = url
    @detail = detail
    @price = price
    @@all << self
  end
  
   
  def self.all
    @@all
  end
end