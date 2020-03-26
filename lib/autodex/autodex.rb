class Autodex::Auto_shop
    attr_accessor :name, :phone_number, :service_offerings, :address, :rating, :price_list

    @@all = []

# an auto shop has a name, phone number, service offerings, an address, a rating, and a price list
#instantiates an auto shop object w/ a hash pf attributes belonging to each instance
    def initialize (auto_shop_hash)
        @name = auto_shop_hash[:name]
        @phone_number = auto_shop_hash[:phone_number]
        @service_offerings = auto_shop_hash[:service_offerings]
        @address = auto_shop_hash[:address]
        @rating = auto_shop_hash[:rating]
        @price_list = auto_shop_hash[:price_list]
        @@all << self 
    end     

    def self.all 
        @@all 
    end 
end 