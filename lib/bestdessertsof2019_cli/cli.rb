class Bestdessertsof2019Cli::CLI
  
  def call
    puts ""
    puts "Welcome to Best Desserts of 2019!" 
    puts ""
    option_1
  end
  
  def option_1
    puts "Take a quick peek at some tasty desserts?"
    puts ""
    puts "Enter: yes / no"
    input = nil 
     
     #while input != "exit"
      input = gets.strip.downcase
      if input == "yes"
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
       puts "#{list}"
     end
     option_2
  end

  def option_2
    input = nil
     while input != "exit"
      puts ""
      puts "If you want any more info about particular dish, enter number of that dish or type list to see the all list again or type exit:"
      
        input = gets.strip
        
        if input.to_i > 0
          puts @desserts.name[input.to_i - 1]
          puts ""
          sleep 1
          puts @desserts.description[input.to_i - 1]
          puts ""
        elsif input == "list"
        list_of_desserts
          puts ""
        elsif input == "exit"
          input = "exit"
          puts ""
          closing
        else 
          puts "That number does not exist, please enter a right number."
          puts ""
        end
      end
    end

    def closing
      puts "Thank you for visiting. See you soon..."
    end
  
end