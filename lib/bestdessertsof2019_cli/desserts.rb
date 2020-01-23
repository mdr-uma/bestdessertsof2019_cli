require 'colorize'

class Bestdessertsof2019Cli::Dessert
  
  attr_accessor :name, :description
  
  @@all = []
  
  def initialize(name, description)
    @name = name
    @description = description
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
