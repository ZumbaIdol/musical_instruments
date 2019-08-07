class MusicalInstruments::Guitars
  attr_accessor :name, :url, :description, :price
  
    @@all = []
    
    def initialize(name: name, url: url)
    @name = name
    @url = url
    @description, @price = nil, nil
    self.class.all << self
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
end