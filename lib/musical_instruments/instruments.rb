class MusicalInstruments::Instruments
  attr_accessor :name, :price, :url, :availability
  
  def self.instrument
    # It should return instances of Instruments
    # puts "Musical instruments for sale:"
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Roland RD-2000 88-key Stage Piano, $2399.99
    # 2. Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural, $2149.99
    # 3. Maharaja Tabla Drum Set- Buy 3KG Black Brass Bayan, Finest Dayan with Book, Hammer, Cushions and Cover (PDI-EA)- $285.00
    # 4. Cremona SV-500 Series Violin Outfit, $399.99
    # DOC
    
    # Scrape websites and return instrument data
    instrument_1 = self.new
    instrument_1.name = "Roland RD-2000 88-key Stage Piano"
    instrument_1.price = "$2399.99"
    instrument_1.availability = true
    instrument_1.url = "https://www.sweetwater.com/store/detail/RD2000--roland-rd-2000-88-key-stage-piano"
    
    instrument_2 = self.new
    instrument_2.price = "$2149.99"
    instrument_2.availability = true
    instrument_2.url = "https://www.zzounds.com/item--FEN0197102"
    
    instrument_3 = self.new
    instrument_3.price = "$285.00"
    instrument_3.availability = true
    instrument_3.url = "https://www.amazon.com/MAHARAJA-Tabla-Drum-Set-Cushions/dp/B0078L3HLS/ref=sr_1_2_sspa?crid=28R3N7FVO4NSX&keywords=tabla+drum&qid=1564609489&s=gateway&sprefix=tabla+d%2Caps%2C161&sr=8-2-spons&psc=1"
    
    instrument_4 = self.new
    instrument_4.price = "$399.99"
    instrument_4.availability = true
    instrument_4.url = "https://www.music123.com/orchestral-strings/cremona-sv-500-series-violin-outfit"
    
    [instrument_1, instrument_2, instrument_3, instrument_4]
    
    
  end
end
  
 
    
    