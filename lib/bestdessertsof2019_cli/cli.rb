require 'colorize'
class Bestdessertsof2019Cli::CLI
  
  def call
    opening
  end
  
  def opening
    puts ""
    puts "* * * * * * * * * * * * * * * * * * *".green
    puts "* WELCOME TO BEST DESSERTS OF 2019! *".green
    puts "* * * * * * * * * * * * * * * * * * *".green
    puts ""
    sleep 2.0
    puts "Take a quick peek at some TASTY DESSERTS???"
    puts ""
    puts "Enter: yes / no".black.on_yellow.bold
    input = nil 
     
     while input != "exit"
      input = gets.strip.downcase
      
      if input == "yes"
        sleep 1.5
        list_of_desserts
        puts ""
      elsif input == "no"
        puts ""
        closing
        puts ""
        exit
      else
        puts "Invalid entry. Please enter yes or no"
        puts ""
      end 
    end
  end 
  
  
  def list_of_desserts
    puts ""
    puts "AWESOME!!!"
    sleep 1.5
    puts ""
    puts "---------------------".blue.bold
    puts " Here Are The Lists! ".blue.bold
    puts "---------------------".blue.bold
    puts ""
    sleep 2.0
    Bestdessertsof2019Cli::Scraper.scrape_purewow
    @desserts = Bestdessertsof2019Cli::Dessert.all
    @desserts.each do |dessert|
       puts "#{dessert.name}"
     end
     choose_option
   end
   

  def choose_option
    input = nil
     while input != "exit"
      puts ""
      puts "If you want cute little Note about particular Dessert, Enter a number of that Dessert or type List to see all the list again or type exit:".yellow
      
        input = gets.strip.downcase
        
        if input.to_i > 0 && input.to_i < 50
          puts @desserts[input.to_i - 1].name
          puts ""
          sleep 1
          puts @desserts[input.to_i - 1].description
          sleep 1.5
        elsif input == "list"
          list_of_desserts
          puts ""
        elsif input == "exit"
          puts ""
          closing
          puts ""
          exit
        else 
          puts ""
          puts "That number does not exist, Please enter a right number.".red
        end
      end
    end

    def closing
      puts "<---Thank you for visiting. See you soon!--->".black.on_white.bold
    end
  
end