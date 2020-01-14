
class Bestdessertsof2019Cli::Dessert
  
  attr_accessor :name, :note, #:list #:url
  
  def self.list
    puts "Here are the Lists!"
    # puts <<-Doc.gsub /^\s*/, ''
    
    # 1.brownie
    # 2.apple pie
    # 3.blueberry cookie
    # 4.rosted caramel puff
    # 5.french roll
    # Doc
    
    self.scrape_purewow
  end

  
  # def self.scrape_lists
  #   lists = []
    
  #   lists << scrape_purewow
    
  #   lists

  # end
  
  def self.scrape_purewow
     doc = Nokogiri::HTML(open("https://www.purewow.com/food/best-desserts-2019"))
     list = self.new
     list.name = doc.css(".description").collect {|heading| heading.css("h2").text}
  end

  
end