class Autodex::API 
    
    attr_reader :auto_shops

    def initialize
        key = tqSyDkFba2SfKtjvndYbWWbkNgtTBFktPlzORTiyo93hPhi_UCe0NpDftdUsWNHiAycLggnljP8eD7tm0112AOItGLzHw6-zpmH8p7gdX_svtCuOuPRYETi38PN7XnYx
        url "https://api.yelp.com/v3/businesses/search?term=auto-shop&location=Corpus-Christi&limit=25"
        response = HTTParty.get(url, headers: {'Authorization' => "Bearer #{key}"})
        response.parsed_response
        @auto_shops = response ["businesses"].collect do |a|

            auto_shop_hash = {
                :name => a["name"],
                :phone_number => a["phone_number"],
                :address => a["address"],
                :service_offerings => a["service_offerings"],
                :rating => a["rating"],
                :price_list => a["price_list"]
            }
            Autodex::Auto_shop.new(auto_shop_hash)
        end 
    end 

    def self.all 
        @@all 
    end 
# displaying different auto shops without any dups
    def get_shops 
        auto_shops.collect{|a| a.name}.flatten.uniq
    end 

# compares to user input as an interger to find an auto shop that matches the instance
    def get_auto_shops
        shop.input = self.get_shops[num-1]
        auto_shops.select {|a| a.shop.include?(shop_input)}
    end 

end 