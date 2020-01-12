class Bestdessertsof2019Cli::CLI
  
  def call
    puts "Welcome to Best Desserts of 2019!" 
    list_of_desserts
    options
  end
  
  def list_of_desserts
    puts "Here are the Lists! 
    1.
    2.
    3.
    4.
    5.
    "
  end
  
  def options
    puts "If you want any more info about particular dish, enter number of that dish or type exit."
      input = nil
    while input != exit
      input = gets.strips
      case input
      when "1"
      puts "more info on 1.."
      when "2"
      puts "more info on 2.."
    else 
      puts "That number does not exit, please enter right number or type exit."
    end
    end
  end
    
    def closing
    puts "Thank you for visiting. See you soon..."
    end
  
end