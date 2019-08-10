class MusicalInstruments::Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
  end
  
  def scrape_guitar_list
    guitars = self.get_page.css("div .span-11 a.bp-title").map(&:text).map(&:strip)
    make_guitars(guitars)
    # TODO scrape price and details
  end
  
  def make_guitars(guitars)
    guitars.each do |guitar|
      MusicalInstruments::Guitars.new(guitar)
      #get_details
    end
  end
  
  def get_details
    doc = Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
    
    guitar = self.new
    guitar.name = doc.css("div .span-11 a.bp-title").map(&:text).map(&:strip)
    guitar.url = doc.css("div .span-11 a.bp-title").map{|a| a.attr("href")}
    guitar.detail = doc.css("div#product-title-container .span-41")[1].text.strip
    guitar.price = doc.css("div .price span").text.strip
    guitar
    # GUITAR_NAMES.each.with_index do |name, i|
    #   guitar = Guitar.new(name)
    #   guitar.url = GUITAR_URLS[i]
    #   detail = guitar.css("div#product-title-container .span-41")[1].text
    #   price = guitar.css("div .price span").text
    #   guitar 
  end
  
  def self.display_all
    self.all.each {|guitar|
      puts "#{guitar.name} - #{guitar.url}"
    }
  end
end
  
#     name = doc.css("div a h2")[0..5].text.strip
#     elec_guitars = doc.css("div .span-11 a")[7..46].text.strip
  
#     doc = Nokogiri::HTML(open("https://www.zzounds.com/item--GIBDSFS18"))
#      description = doc.css("div#product-title-container .span-41")[1].text
#      price = doc.css("div .price span").text
