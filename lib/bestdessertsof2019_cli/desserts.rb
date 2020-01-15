
class Bestdessertsof2019Cli::Dessert
  
  attr_accessor :name, :description
  
  def self.list
    puts "Here are the Lists!"
    self.scrape_purewow
  end

  # def self.description
  #   # self.scrape_purewow_description
  # end
  
  # def self.scrape_lists
  #   lists = []
    
  #   lists << scrape_purewow
    
  #   lists

  # end
  
  def self.scrape_purewow
    # dessert_array = []
    doc = Nokogiri::HTML(open("https://www.purewow.com/food/best-desserts-2019"))
      dessert = self.new
      dessert.name = doc.css(".description").collect {|heading| heading.css("h2").text}
      dessert.description = doc.css(".description").collect {|paragraph| paragraph.css("p").text.gsub("Get the recipe", "")}
      dessert
    # binding.pry
    
    # doc.css(".description").collect do |dessert|
    #   dessert.name = dessert.css("h2").text,
    #   dessert.description = dessert.css("p").text.gsub("Get the recipe", "")
      # binding.pry
    
  end
  
end