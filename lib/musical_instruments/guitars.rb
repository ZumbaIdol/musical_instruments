class MusicalInstruments::Guitars
  attr_accessor :name, :url, :description, :price
  
    @@all = []
    
  # def self.new_from_index_page(guitar)
  #   self.new(
      
  # end
    
    def initialize(name=nil, url=nil, description=nil, price=nil)
    @name = name
    @url = url
    @description = description
    @price = price
    @@all << self
  end
  
   
  def self.all
    @@all
  end
  
  def self.find(item)
    self.all[item - 1]
  end
  
  def description
    @description ||= doc.css("div#product-title-container .span-41")[1].text
  end
  
  def price
    @price ||= doc.css("div .price span").text.strip
  end
  
  def doc
    @doc = Nokogiri::HTML(open(self.url))
  end
end