class Owner
  attr_accessor :name, :pets 
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    save
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}

  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end



end
