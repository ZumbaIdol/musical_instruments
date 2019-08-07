# class Scraper

#   def self.catalog
#     #It should return instances of Instruments
#     self.scrape_guitars
#   end
    
#   def self.scrape_guitars
#     # Scrape websites and return instrument data
#     guitars = []
#     guitars << self.scrape_elec_guitars
#     guitars
#   end
  
#   def self.scrape_guitar
#     doc = Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
    
#     guitar = self.new
#     guitar.name = doc.css("div .span-11 a")[7..46].text.strip
#     guitar.price = doc.css("div .price span").text.strip
#     guitar.description = doc.search("div#product-title-container .span-41")[1].text
#     guitar
#   end
  
# #   def self.scrape_elec_guitars
# #     doc = Nokogiri::HTML(open(BASE_URL))
# #     name = doc.css("div a h2")[0..5].text.strip
# #     elec_guitars = doc.css("div .span-11 a")[7..46].text.strip
# #   end
  
# #   def self.scrape_elec_guitars_description
# #     doc = Nokogiri::HTML(open("https://www.zzounds.com/item--GIBDSFS18"))
# #     description = doc.css("div#product-title-container .span-41")[1].text
# #     price = doc.css("div .price span").text
# #   end
# # end
  
    
#     # instrument_1 = self.new
#     # instrument_1.name = "Fender American Elite V Jazz Bass, 5-String (Maple, with Case), Natural"
#     # instrument_1.price = "$2149.99"
#     # instrument_1.availability = true
#     # instrument_1.url = "https://www.zzounds.com/item--FEN0197102"
    
#     # instrument_2 = self.new
#     # instrument_2.name = "Gretsch GE4E825Z Energy Drum Set, 5-Piece (with Planet Z Cymbals), Black"
#     # instrument_2.price = "$749.99"
#     # instrument_2.availability = true
#     # instrument_2.url = "https://www.zzounds.com/item--GREGE4E825Z"
  