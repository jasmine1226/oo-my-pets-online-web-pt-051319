class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = { fishes: [], cats: [], dogs: [] }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets[:dogs].collect do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].collect do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
  end

end
