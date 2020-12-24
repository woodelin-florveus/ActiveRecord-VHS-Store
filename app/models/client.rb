class Client < ActiveRecord::Base
    has_many :rentals
    has_many :vhs, through: :rentals 

    # Client.first_rental - accepts and instance of arguments needed to create a new Client instance and a currently available Vhs instance  it creates a new Client instance and a new Rental instance with current set to true.

    def self.first_rental(client, vhs)
        # take in arguments
        # create new client
        # change to current inside of rental

        new_client = Client.create(name: client[:name],  home_address: client[:home_address])
                    Rental.create(vhs_id: vhs.id, client_id: new_client.id, current: true)
    end

    # Client.most_active - returns a list of top 5 most active clients (i.e. those who had the most non-current / returned rentals)

    def return_rentals
        # check return rentals
        
    end

    def self.most_active
        # take in clients 
        # check who has the most non current rental
        # 
    end

    # vhs.rentals gives clietns 
    # client.rental gives vhs

end