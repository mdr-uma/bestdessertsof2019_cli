class Bestdessertsof2019Cli::Dessert
  
  attr_accessor :name, :note
  
  def self.all
    puts "Here are the Lists!"
    puts <<-Doc.gsub /^\s*/, ''
    
    1.brownie
    2.apple pie
    3.blueberry cookie
    4.rosted caramel puff
    5.french roll
    Doc
  end
  
end