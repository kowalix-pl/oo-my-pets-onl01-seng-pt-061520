require 'pry'
class Owner
  attr_reader :name, :species
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def species
   @species = "human"
  end 
  
  def say_species
   "I am a human."
  end
  
  def self.all 
   @@all
  end 
  
  def self.count 
   self.all.size
  end 
  
  def self.reset_all
    self.all.clear
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  
  # def buy_cat(name)
  #   cat = Cat.new(name)
  #   cat.owner = self

  # end
  
  # def buy_dog(
  #   Dog.all.select {|cat| cat.owner = self}
  # end 
 
  
  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    Dog.all.each {|dog| dog.mood = "nervous"}
    Cat.all.each {|cat| cat.mood = "nervous"}
    Dog.all.each {|dog| dog.owner = nil}
    Cat.all.each {|cat| cat.owner = nil}
  end
  
  
  def list_pets
   Cat.all.count {|cat| cat.owner == self}
    binding.pry
  #   Dog.all.each {|dog| dog.owner == self}
  #   binding.pry
  #   # Cat.all.each {|cat| if cat.owner = self}
  # # "I have #{Dog.all..count} dog(s), and #{Cat.all.self.count} cat(s)."
  end
 
  
  
  
end