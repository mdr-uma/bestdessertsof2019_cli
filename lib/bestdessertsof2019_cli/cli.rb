require 'colorize'
class Bestdessertsof2019Cli::CLI
  
  def call
    puts ""
    puts "* * * * * * * * * * * * * * * * * * *".green
    puts "* WELCOME TO BEST DESSERTS OF 2019! *".green
    puts "* * * * * * * * * * * * * * * * * * *".green
    puts ""
    sleep 2.0
    opening
  end
  
  def opening
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
      elsif input == "no" #|| input == "exit"
        #input = "exit"
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
    @desserts = Bestdessertsof2019Cli::Dessert.list
    @desserts.name.each do |list|
       puts "#{list}"
      # binding.pry
     end
     choose_option
   end
   

  def choose_option
    input = nil
     while input != "exit"
      puts ""
      puts "If you want cute little Note about particular Dessert, Enter a number of that Dessert or type List to see the all list again or type exit:".yellow
      
        input = gets.strip
        
        if input.to_i > 0 && input.to_i < 50
          puts @desserts.name[input.to_i - 1]
          puts ""
          sleep 1
          puts @desserts.description[input.to_i - 1]
          sleep 1.5
        elsif input == "list"
          list_of_desserts
          puts ""
        elsif input == "exit"
          #input = "exit"
           puts ""
          closing
          puts ""
          exit
        else 
          puts "That number does not exist, Please enter a right number.".red
        end
      end
    end

    def closing
      puts "<---Thank you for visiting. See you soon!--->".black.on_white.bold
    end
  
end