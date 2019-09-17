class Pirate
    attr_accessor :name, :weight, :height
    @@all = []
    def initialize (pirate_hash)       
        @name = pirate_hash[:name]
        @weight = pirate_hash[:weight]
        @height = pirate_hash[:height] 
        @@all << self
    end

    def self.all 
        @@all 
    end

end