class MusicalInstruments::Guitars
  attr_accessor :name, :url, :detail, :price
  
    @@all = []
    
  def self.new_from_index_page(guitar)
    self.new(
      guitar.css("h2").text,
      "https://www.zzounds.com/cat--Electric-Guitars--2640 #{guitar.css("div .span-11 a")[7..46].text.strip}"
      )
  end
    
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