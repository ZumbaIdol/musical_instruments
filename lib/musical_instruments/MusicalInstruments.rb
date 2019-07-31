class MusicalInstruments::Instruments
  attr_accessor :name, :price, :url, :availability
  
  def self.method
    # It should return instances of Instruments
    puts "Musical instruments for sale:"
    puts <<-DOC.gsub /^\s*/, ''
    1. Roland RD-2000 88-key Stage Piano, $2399.99
    2. Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural, $2149.99
    3. Maharaja Tabla Drum Set- Buy 3KG Black Brass Bayan, Finest Dayan with Book, Hammer, Cushions and Cover (PDI-EA)- $285.00
    4. Cremona SV-500 Series Violin Outfit, $399.99
    DOC
    
    # Scrape websites and return instrument data
    instrument_1 = self.new
    instrument_1.name = "Roland RD-2000 88-key Stage Piano"
    instrument_1.price = "$2399.99"
    instrument_1.availability = true
    instrument_1.url = "www.sweetwater.com"
    
    instrument_2 = self.new
    instrument_2.price = "$2149.99"
    instrument_2.availability = true
    instrument_2.url = "www.zzounds.com"
    
    instrument_3 = self.new
    instrument_3.price = "$285.00"
    instrument_3.availability = true
    instrument_3.url = "www.amazon.com"
    
    instrument_4 = self.new
    instrument_4.price = "$399.99"
    instrument_4.availability = true
    instrument_4.url = "www.music123.com"
    
    [instrument_1, instrument_2, instrument_3, instrument_4]
    
    self.scape_instruments
  end
  
  def self.scape_instruments
    instruments = []
    instruments << self.scrape_sweetwater
    instruments << self.scrape_zzounds
    instruments << self.scrape_amazon
    instruments << self.scrape_music123
  end
  
  # def self.scrape_sweetwater
  #   doc = Nokogiri::HTML(open("https://sweetwater.com"))
  #   instrument = self.new
    
    