class Owner
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
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
    @@all.size
  end


end
