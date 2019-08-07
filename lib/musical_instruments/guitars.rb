class MusicalInstruments::Guitars
  attr_accessor :name, :url, :description, :price
  
  def self.catalog
    #It should return instances of Instruments
    self.scrape_guitars
  end
    
  def self.scrape_guitars
    # Scrape websites and return instrument data
    guitars = []
    guitars << self.scrape_guitars
    guitars
  end
  
  def self.scrape_guitar
    doc = Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
    
    guitar = self.new
    guitar.name = doc.css("div .span-11 a")[7..46].text.strip
    guitar.price = doc.css("div .price span").text.strip
    guitar.description = doc.css("div#product-title-container .span-41")[1].text
    guitar
  end
end

#     @@all = []
    
#     def initialize(name: name, url: url)
#     @name = name
#     @url = url
#     @description, @price = nil, nil
#     self.class.all << self
#   end
  
   
#   def self.all
#     @@all
#   end
# end