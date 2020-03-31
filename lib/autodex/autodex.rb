class Autodex::Auto_shop
    attr_accessor :name, :phone_number, :address, :rating

    @@all = []

# an auto shop has a name, phone number, an address, a rating, and a price list
#instantiates an auto shop object w/ a hash pf attributes belonging to each instance
    def initialize (auto_shop_hash)
        @name = auto_shop_hash[:name]
        @phone_number = auto_shop_hash[:phone_number]
        @address = auto_shop_hash[:address]
        @rating = auto_shop_hash[:rating]
        @@all << self 
    end     

    def self.all 
        @@all 
    end 
end 