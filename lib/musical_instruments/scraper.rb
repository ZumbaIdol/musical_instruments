class MusicalInstruments::Scraper
  GUITAR_NAMES = []
  GUITAR_URLS = []
  
  
  def get_page
    Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
  end
  
  def scrape_guitar_list
    guitars = self.get_page.css("div .span-11 a.bp-title").map(&:text).map(&:strip)
    make_guitars(guitars)
  end
  
  def make_guitars(guitars)
    guitars.each do |guitar|
      MusicalInstruments::Guitars.new(guitar)
      #get_details
    end
  end
  
  def get_details
    GUITAR_NAMES.each.with_index do |name, i|
      guitar = Guitar.new(name)
      guitar.url = GUITAR_URLS[i]
      detail = guitar.css("div#product-title-container .span-41")[1].text
      price = guitar.css("div .price span").text
      guitar 
    end
  end
end
  
#     name = doc.css("div a h2")[0..5].text.strip
#     elec_guitars = doc.css("div .span-11 a")[7..46].text.strip
  
#     doc = Nokogiri::HTML(open("https://www.zzounds.com/item--GIBDSFS18"))
#      description = doc.css("div#product-title-container .span-41")[1].text
#      price = doc.css("div .price span").text
