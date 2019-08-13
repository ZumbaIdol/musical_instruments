class MusicalInstruments::Scraper
  
  def self.get_page
    Nokogiri::HTML(open("https://www.zzounds.com/cat--Electric-Guitars--2640"))
  end
  
  def self.scrape_guitar_list
    guitars = self.get_page.css("div .span-11 a.bp-title")[0..44].map(&:text).map(&:strip)
    links = self.get_page.css("div .span-11 a.bp-title").map{|item| item.attr("href")}
    make_guitars(guitars, links)
  end
  
  def self.make_guitars(guitars, links)
    guitars.each_with_index do |guitar, index|
      MusicalInstruments::Guitars.new(guitar, links[index])
    end
  end
  
  def self.guitar_details(guitar)
    url = guitar.url
    page = Nokogiri::HTML(open(url))
    guitar.detail ||= page.css("div#product-title-container .span-41")[1].text
    guitar.price ||= page.css("div .price span").map(&:text)
    guitar
  end
end
