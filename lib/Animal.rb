class Animal

    @@all = []

    attr_reader(:species, :nickname)
    attr_accessor(:weight, :zoo)

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all.push(self)
    end

    def self.all
        return @@all
    end

end
