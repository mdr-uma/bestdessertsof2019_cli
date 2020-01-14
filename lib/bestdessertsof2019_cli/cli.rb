class Bestdessertsof2019Cli::CLI
  
  def call
    puts "Welcome to Best Desserts of 2019!" 
    option_1
    # list_of_desserts
    # options
    # closing
  end
  
    def option_1
    puts "Take a quick peek at some tasty desserts?"
    puts "Enter: yes / no"
    input = nil 
     while input != "exit"
      input = gets.strip.downcase
      
      if input == "yes"
        list_of_desserts
      elsif input == "no" || "exit"
      # binding.pry
        input = "exit"
        closing
      else
        puts "Invalid entry. Please enter yes or no"
      end 
     end
  end 
  
  
  def list_of_desserts
    @desserts = Bestdessertsof2019Cli::Dessert.list
     @desserts.each do |list|
      # binding.pry
       puts "#{list}"
     end
     option_2
  end
  
  def option_2
    input = nil
    while input != "exit"
      puts "If you want any more info about particular dish, enter number of that dish or type list to see the all list again or type exit:"
        input = gets.strip
        
        if input.to_i > 0
          puts @desserts[input.to_i - 1]
        elsif input == "list"
        list_of_desserts
        elsif 
          input = "exit"
          closing
        else 
        puts "That number does not exist, please enter a right number."
      end
      end
    end

      # if input == "1"
      #   puts "more info on 1.."
      # elsif input == "2"
      #   puts "more info on 2.."
      # elsif input == "3"
      #   puts "more info on 3.."
      # elsif input == "4"
      #   puts "more info on 4.."
      # elsif input == "5"
      #   puts "more info on 5.."
      # elsif input == "list"
      #   list_of_desserts
      # elsif input == "exit"
      #   # input = "exit"
      #   closing
      #   # puts "Thank you for visiting. See you soon..."
      # else 
      #   puts "That number does not exist, please enter right a number."
      # end
    
    
    def closing
      puts "Thank you for visiting. See you soon..."
    end
  
end