class Owner
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    save
    @species = "human"
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
    puts @species
  end 



end
