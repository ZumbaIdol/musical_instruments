class Guitars
  attr_accessor :name, :url, :description, :price
  BASE_URL = "https://www.zzounds.com/cat--Electric-Guitars--2640"
  
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
end