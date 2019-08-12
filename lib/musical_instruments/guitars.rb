class MusicalInstruments::Guitars
  attr_accessor :name, :url, :detail, :price
  
    @@all = []
    
    def initialize(name=nil, url=nil, detail=nil, price=nil)
    @name = name
    @url = url
    @detail = detail
    @price = price
    @@all << self
  end
  
   
  def self.all
    @@all
  end
  
  def self.find(item)
    self.all[item - 1]
  end
  
  
  # def detail
  #   @the_guitar_detail ||= page.css("div#product-title-container .span-41")[1].text.strip
  # end
  
  # def price
  #   @the_guitar_price ||= page.css("div .price span").map(&:text)
  # end
  
  # def page
  #   @page = Nokogiri::HTML(open("https://www.zzounds.com/item--GIBDSFS18"))
  # end
end