class Autodex::API 
    
    attr_reader :auto_shops

    def initialize
        key = tqSyDkFba2SfKtjvndYbWWbkNgtTBFktPlzORTiyo93hPhi_UCe0NpDftdUsWNHiAycLggnljP8eD7tm0112AOItGLzHw6-zpmH8p7gdX_svtCuOuPRYETi38PN7XnYx
        url "https://api.yelp.com/v3/businesses/search?term=auto-shop&location=Corpus-Christi&limit=25"
        response = HTTParty.get(url, headers: {'Authorization' => "Bearer #{key}"})
        response.parsed_response
        @auto_shops = response ["businesses"].collect do |a|

            auto_shop_hash = {
                :name => a["name"]
                :phone_number => a["phone_number"]
                :available_services => a["available_services"]
                :address => a["address"]
                :rating => a["rating"]
                :price_list => a["price_list"]
            }
            Autodex::Auto_shop.new(auto_shop_hash)
        end 
    end 

    def self.all 
        @@all 
    end 
# displaying different auto shops without any dups
    def get_services 
        auto_shops.collect{|a| a.available_services}.flatten.uniq
    end 

end 