class Bestdessertsof2019Cli::Scraper

  def self.scrape_purewow
    web_page = Nokogiri::HTML(open("https://www.purewow.com/food/best-desserts-2019"))
    desserts = web_page.search(".description")
    
    desserts.collect do |dessert|
      name = dessert.css("h2").text
      description = dessert.css("p").text.gsub("Get the recipe", "")
      Bestdessertsof2019Cli::Dessert.new(name, description)
    end
  end
end