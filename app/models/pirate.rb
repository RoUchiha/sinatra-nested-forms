class Pirate

    attr_reader :name, :height, :weight

    @@all = []
    
    def initialize(pirate)
        @name = pirate[:name]
        @height = pirate[:height]
        @weight = pirate[:weight]
        @@all << self
    end

    def self.all
        @@all
    end


end