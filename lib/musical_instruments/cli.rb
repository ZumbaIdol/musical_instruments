# CLI Controller
class MusicalInstruments::CLI
  
  def call
    puts "Musical instruments for sale:"
    list_instruments
  end
  
  def list_instruments
    puts <<-DOC.gsub /^\s*/, ''
    Roland RD-2000 88-key Stage Piano, $2399.99
    Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural, $2149.99
    Maharaja Tabla Drum Set- Buy 3KG Black Brass Bayan, Finest Dayan with Book, Hammer, Cushions and Cover (PDI-EA)- $285.00
    Cremona SV-500 Series Violin Outfit, $399.99
    DOC
  end
end

