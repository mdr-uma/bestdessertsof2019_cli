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
    doc = Nokogiri::HTML(open("https://www.purewow.com/food/best-desserts-2019"))
    dessert = self.new
      doc.css(".description").collect do |paragraph|
      dessert.name = paragraph.css("h2.firsth2").text
      dessert.description = heading.css("p").text.gsub("Get the recipe", "")
      dessert
    end

    # doc.css(".description").collect {|paragraph| paragraph.css("p").text.gsub("Get the recipe", "")}
  end

  
end