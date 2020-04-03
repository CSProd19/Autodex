class Autodex::CLi 
    attr_reader :api
    #returns to the user

    def call 
        @api = Autodex::API.new 
        puts <<-REST 
        "Welcome to Autodex! Where you can find your local mechanic!"
        REST
        beginning
    end 

    def beginning 
        display_shop_choices 
        input_shop_choice
        return_details
        last_hurrah
    end 
#returns all auto shops as an index starting with the number 1
    def display_shop_choices
        @shop = api.get_shops.each.with_index(1) do |shop, idx|
            puts <<-REST 
            #{idx}. #{shop}
            REST
        end 
    end 
#this method expects an input to display details of each auto shop according to the users input then returns those details or the else statement runs
    def input_shop_choice
        puts <<-REST 
        "Please enter a number to learn more about an auto shop."
        REST
        puts <<-REST 
        "Please enter 'End' to exit"
        REST
        input = gets.strip.downcase
        if valid?(input, @shop)
            display_details(input.to_i)
            puts <<-REST 
            "To learn more, enter the number for the auto shop you want."
            REST
        else 
            puts <<-REST 
            "I'm sorry. Please pick another auto shop."
            REST
            sleep(2)
            beginning 
        end 
    end 
#when users input an auto shop number to display details 
    def return_details
        puts <<-REST 
        Please enter a valid auto shop number
        REST
        a = gets.chomp 
        if valid?(a, @shop)
            display_details(a.to_i)
        else 
            return_details 
        end 
    end 
#returns the auto shop hash details
    def display_details(input)
        a = Autodex::Auto_shop.all[input-1]

        puts  <<-REST
        Name: #{a.name},
        Phone: #{a.phone_number},
        Address: #{a.address},
        Rating: #{a.rating} of 5,
        REST
                
    end 

    def valid?(input, array)
        if input == "end"
          goodbye 
        end  
         input.to_i.between?(1, array.length)
    end 

    def last_hurrah
        puts <<-REST 
        "Would you like to pick another shop? Yes or No"
        REST
        if gets.chomp.downcase == "yes"
            beginning
        else
           goodbye
        end
    end 

    def goodbye 
        puts "Thank you for using Autodex! Have yourself a wonderful day!" 
        exit         
    end 
end  

