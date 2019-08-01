class MusicalInstruments::Instruments
  attr_accessor :name, :price, :url, :availability
  
  def self.cataolog
    #It should return instances of Instruments
    self.scrape_instruments
  end
    
  def self.scrape_instruments
    # Scrape websites and return instrument data
    instruments = []
    instruments << self.scrape_zzounds
    instruments
  end
    
  def self.scrape_zzounds
    doc = Nokogiri::HTML(open("https://www.zzounds.com/item--FEN0197102"))
    name = doc.search("h1#product-title").text
    binding.pry
  end
end
  
 
    # instrument_1 = self.new
    # instrument_1.name = "Roland RD-2000 88-key Stage Piano"
    # instrument_1.price = "$2399.99"
    # instrument_1.availability = true
    # instrument_1.url = "https://www.sweetwater.com/store/detail/RD2000--roland-rd-2000-88-key-stage-piano"
    
    # instrument_2 = self.new
    # instrument_2.name = "Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural"
    # instrument_2.price = "$2149.99"
    # instrument_2.availability = true
    # instrument_2.url = "https://www.zzounds.com/item--FEN0197102"
    
    # instrument_3 = self.new
    # instrument_3.name = "Maharaja Tabla Drum Set- Buy 3KG Black Brass Bayan, Finest Dayan with Book, Hammer, Cushions and Cover (PDI-EA)"
    # instrument_3.price = "$285.00"
    # instrument_3.availability = true
    # instrument_3.url = "https://www.amazon.com/MAHARAJA-Tabla-Drum-Set-Cushions/dp/B0078L3HLS/ref=sr_1_2_sspa?crid=28R3N7FVO4NSX&keywords=tabla+drum&qid=1564609489&s=gateway&sprefix=tabla+d%2Caps%2C161&sr=8-2-spons&psc=1"
    
    # instrument_4 = self.new
    # instrument_4.name = "Cremona SV-500 Series Violin Outfit"
    # instrument_4.price = "$399.99"
    # instrument_4.availability = true
    # instrument_4.url = "https://www.music123.com/orchestral-strings/cremona-sv-500-series-violin-outfit"
    
    