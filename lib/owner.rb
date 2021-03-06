class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all =[]

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_cat = Dog.new(name)
    @pets[:dogs] << new_cat
  end

  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}

end

  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
end

  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, all_pets|
      all_pets.each  do |o|
        o.mood = "nervous"
  end
  all_pets.clear
  end
end

  def list_pets
    all_pets = "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
