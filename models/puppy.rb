class Puppy
    attr_reader :name, :breed
    attr_accessor :age
    
    def initialize(name, breed, months_old)
        @name = name
        @breed = breed
        @age = months_old
    end

end