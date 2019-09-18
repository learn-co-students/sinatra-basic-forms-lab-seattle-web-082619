class Puppy

  attr_accessor :name, :months_old
  attr_reader :breed 

  @@all = []

  def initialize(name:, breed:, months_old:)
    @name = name
    @breed = breed
    @months_old = months_old

    @@all << self
  end

end
