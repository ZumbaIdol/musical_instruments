class MusicalInstruments::Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
  end
  
  def scrape_guitar_list
    self.get_page.css("div .span-11 a")[7..46].text.strip
  end
  
  def make_guitars
    scrape_guitars_index.each do |guitar|
      MusicalInstruments::Guitars.new_from_index_page(guitar)
    end
  end
end
  
#     name = doc.css("div a h2")[0..5].text.strip
#     elec_guitars = doc.css("div .span-11 a")[7..46].text.strip
  
#     doc = Nokogiri::HTML(open("https://www.zzounds.com/item--GIBDSFS18"))
#      description = doc.css("div#product-title-container .span-41")[1].text
#      price = doc.css("div .price span").text
