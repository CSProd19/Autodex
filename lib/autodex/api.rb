class Autodex::API 


    def initialize
        key = "tqSyDkFba2SfKtjvndYbWWbkNgtTBFktPlzORTiyo93hPhi_UCe0NpDftdUsWNHiAycLggnljP8eD7tm0112AOItGLzHw6-zpmH8p7gdX_svtCuOuPRYETi38PN7XnYx"
        url = "https://api.yelp.com/v3/businesses/search?term=auto-shop&location=Corpus-Christi&limit=25"
        response = HTTParty.get(url, headers: {'Authorization' => "Bearer #{key}"})
        response.parsed_response 
        response ["businesses"].collect do |a|  

            auto_shop_hash = {
                :name => a["name"],
                :phone_number => a["display_phone"],
                :address => a["location"]["display_address"].join(", "),
                :rating => a["rating"]
            }
            Autodex::Auto_shop.new(auto_shop_hash)
        end 
    end 


# displaying different auto shops without any dups
    def get_shops 
        Autodex::Auto_shop.all.collect{|a| a.name}.flatten.uniq
    end 

# compares to user input as an interger to find an auto shop that matches the instance
    def search_auto_shops(name)
        Autodex::Auto_shop.all.select {|shop| shop.name.include?(name)}
    end
end
