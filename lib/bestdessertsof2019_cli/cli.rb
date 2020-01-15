require 'colorize'
class Bestdessertsof2019Cli::CLI
  
  def call
    puts ""
    puts "* * * * * * * * * * * * * * * * * * *".green
    puts "* Welcome to Best Desserts of 2019! *".green
    puts "* * * * * * * * * * * * * * * * * * *".green
    puts ""
    sleep 2.0
    option_1
  end
  
  def option_1
    puts "Take a quick peek at some tasty desserts?"
    puts ""
    puts "Enter: yes / no".black.on_yellow.bold
    input = nil 
     
     #while input != "exit"
      input = gets.strip.downcase
      
      if input == "yes"
        sleep 1.5
        list_of_desserts
        puts ""
      elsif input == "no" || input == "exit"
        input = "exit"
        puts ""
        closing
        puts ""
      else
        puts "Invalid entry. Please enter yes or no"
        puts ""
      end 
    #end
  end 
  
  
  def list_of_desserts
    @desserts = Bestdessertsof2019Cli::Dessert.list
    @desserts.name.each do |list|
       puts "#{list}".blue.bold
      # binding.pry
     end
     option_2
   end
   

  def option_2
    input = nil
     while input != "exit"
      puts ""
      puts "If you want cute little note about particular dessert, enter a number of that dessert or type list to see the all list again or type exit:".yellow
      
        input = gets.strip
        
        if input.to_i > 0
          puts @desserts.name[input.to_i - 1]
          puts ""
          sleep 1
          puts @desserts.description[input.to_i - 1]
          sleep 1.5
        elsif input == "list"
          list_of_desserts
          puts ""
        elsif input == "exit"
          input = "exit"
           puts ""
          closing
        else 
          puts "That number does not exist, please enter a right number."
        end
      end
    end

    def closing
      puts "<---Thank you for visiting. See you soon!--->".black.on_white.bold
    end
  
end