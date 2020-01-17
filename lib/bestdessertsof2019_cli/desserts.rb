require 'colorize'

class Bestdessertsof2019Cli::Dessert
  
  attr_accessor :name, :description
  
  def self.list
    puts ""
    puts "AWESOME!!!"
    sleep 1.5
    puts ""
    puts "---------------------".blue.bold
    puts " Here Are The Lists! ".blue.bold
    puts "---------------------".blue.bold
    puts ""
    sleep 2.0
    self.scrape_purewow
  end

  
  def self.scrape_purewow
    web_page = Nokogiri::HTML(open("https://www.purewow.com/food/best-desserts-2019"))
    dessert = self.new
    doc = web_page.css(".post").children.css(".description")
    dessert.name = doc.collect {|title| title.css("h2").text}
    dessert.description = doc.collect {|note| note.css("p").text.gsub("Get the recipe", "")}
    dessert
  end
  
end