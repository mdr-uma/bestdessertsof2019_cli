class Bestdessertsof2019Cli::CLI
  
  def call
    puts "Welcome to Best Desserts of 2019!" 
    list_of_desserts
    options
    closing
  end
  
  def list_of_desserts
    puts "Here are the Lists!"
    puts <<-Doc
    1.brownie
    2.apple pie
    3.blueberry cookie
    4.rosted caramel puff
    5.french roll
    Doc
  end
  
  def options
    input = nil
    while input != "exit"
      puts "If you want any more info about particular dish, enter number of that dish or type list to see the all list again or type exit:"
    input = gets.strip

      case input
      when "1"
        puts "more info on 1.."
      when "2"
        puts "more info on 2.."
      when "3"
        puts "more info on 3.."
      when "4"
        puts "more info on 4.."
      when "5"
      puts "more info on 5.."
      when "list"
        list_of_desserts
    else 
      puts "That number does not exit, please enter right number or type exit."
    end
  end
  end
    
    def closing
    puts "Thank you for visiting. See you soon..."
    end
  
end