class Autodex::CLi 
    attr_reader :api
    #returns to the user

    def call 
        @api = Autodex::API.new 
        puts "Welcome to Autodex! Where you can find your local mechanic!"
        beginning
    end 

    def beginning 
        display_shop_choices 
        input_shop_choice
    end 

    def display_shop_choices
        @service = api.get_shops.each.with_index(1) do |shop, idx|
            puts #{idx}. #{shop}
        end 
    end 

    def input_shop_choice
        puts "Please enter a number to learn more about an auto shop."
        puts "Please enter 'End' to exit"
        input = gets.strip.downcase
        if valid?(input, @shop)
            display_auto_shops(input.to_i)
            puts "To learn more, enter the number for the auto shop you want."
        else 
            puts "I'm sorry. Please pick another auto shop."
        end 
        sleep(2)
        beginning 
    end 

    def display_auto_shops(input)
        @auto_shop = api.get_auto_shops(input).each.with_index(1) do |a, idx|
            puts #{idx}. #{a.name}
        end 
    end 

    
    
end 