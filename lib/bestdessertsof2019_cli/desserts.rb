
class Bestdessertsof2019Cli::Dessert
  
  attr_accessor :name, :note, #:url
  
  def self.list
    puts "Here are the Lists!"
    # puts <<-Doc.gsub /^\s*/, ''
    
    # 1.brownie
    # 2.apple pie
    # 3.blueberry cookie
    # 4.rosted caramel puff
    # 5.french roll
    # Doc
    
    self.scrape_lists
  end
  
  def self.scrape_lists
    lists = []
    
    lists << scrape_purewow
    
    lists
  end
  
  def self.scrape_purewow
    # doc = Nokogiri::HTML(open("https://www.purewow.com/food/best-desserts-2019"))
     doc = Nokogiri::HTML(open("https://www.cnn.com/travel/article/world-50-best-desserts/index.html"))
     list = self.new
    # list.name = doc.css("h2.firsth2").text.strip
    list.name = doc.css("span h3").text
    
    # binding.pry
  end
  
end