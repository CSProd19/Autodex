class Autodex::Auto_shop
    attr_accessor :name, :phone_number, :service_offerings, :address, :rating, :price_list

    @@all = []

# an auto shop has a name, phone number, service offerings, an address, a rating, and a price list
#instantiates an auto shop object w/ a hash pf attributes belonging to each instance
    def initialize (auto_shop_hash)
        @name = auto_shop_has[:name]
        @phone_number[:phone_number]
        @service_offerings[:service_offerings]
        @address[:address]
        @rating[:rating]
        @price_list[:price_list]
        @@all << self 
    end     

    def self.all 
        @@all 
    end 
end 