class MusicalInstruments::Instruments
  attr_accessor :name, :price, :url, :description
  BASE_URL = "https://www.zzounds.com/cat--Electric-Guitars--2640"
  
  # @@all = []
  
  # def self.all
  #   @@all
  # end
  
  def self.cataolog
    #It should return instances of Instruments
    self.scrape_instruments
  end
  
  # def self.scrape_guitars_page
  #   doc = Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
  #   instr_category = 
  #   @@all << self.scrape_guitars
  #   binding.pry
  # end
    
  def self.scrape_instruments
    # Scrape websites and return instrument data
    instruments = []
    instruments << self.scrape_guitar
    instruments << self.scrape_drums
    instruments
  end
  
  # def self.scrape_guitar
  #   doc = Nokogiri::HTML(open("https://www.zzounds.com/item--FEN0197102"))
    
  #   instr = self.new
  #   instr.name = doc.search("h1#product-title").text.strip
  #   instr.price = doc.search("div .span-12 .price span").text.strip
  #   instr.description = doc.search("div#tab-product-overview").text.strip
  #   instr
  # end
  
  def self.scrape_elec_guitars
    doc = Nokogiri::HTML(open(BASE_URL))
    binding.pry
    titles = parsed_titles.css("div a h2")[0..5].text.strip
    guitars = parsed_items.css("div .span-11 a .span-11").text.strip
  end
  
  def self.elect_guitars_descrip(description)
    
  end

  
  def self.scrape_drums
    doc = Nokogiri::HTML(open("https://www.zzounds.com/item--GREGE4E825Z"))
    
    instr = self.new
    instr.name = doc.search("h1#product-title").text.strip
    instr.price = doc.search("div .span-22 .price span").text.strip
    instr.description = doc.search("div#tab-product-overview").text.strip
    instr
  end
end
  
    
    # instrument_1 = self.new
    # instrument_1.name = "Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural"
    # instrument_1.price = "$2149.99"
    # instrument_1.availability = true
    # instrument_1.url = "https://www.zzounds.com/item--FEN0197102"
    
    # instrument_2 = self.new
    # instrument_2.name = "Gretsch GE4E825Z Energy Drum Set, 5-Piece (with Planet Z Cymbals), Black"
    # instrument_2.price = "$749.99"
    # instrument_2.availability = true
    # instrument_2.url = "https://www.zzounds.com/item--GREGE4E825Z"
    