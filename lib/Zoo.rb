class Zoo

    @@all = []

    attr_reader(:name, :location)

    def initialize(name, location)
        @name = name
        @location = location
        @@all.push(self)
    end

    def animals
        Animal.all.select do | animal |
            animal.zoo == self
        end
    end

    def animal_species 
        results = []
        self.animals.each do | animal |
            results.push(animal.species)
        end
        return results.uniq
    end

    def find_by_species(species)
        self.animals.select do | animal |
            animal.species == species
        end
    end

    def self.all
        @@all
    end

end
