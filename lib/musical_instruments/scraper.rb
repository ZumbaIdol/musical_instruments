class MusicalInstruments::Scraper
  
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
  
   def scrape_guitar_details
    links = self.get_page.css("div .span-11 a.bp-title").map{|a| a.attr("href")}
    details = self.get_page.css("div#product-title-container .span-41")[1].text.strip
    price = self.get_page.css("div .price span").map(&:text)
  end
end
  
#     name = doc.css("div a h2")[0..5].text.strip
#     elec_guitars = doc.css("div .span-11 a")[7..46].text.strip
  
#     doc = Nokogiri::HTML(open("https://www.zzounds.com/item--GIBDSFS18"))
#      description = doc.css("div#product-title-container .span-41")[1].text
#      price = doc.css("div .price span").text
