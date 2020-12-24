class Rental < ActiveRecord::Base
    belongs_to :client 
    belongs_to :vhs 

    # Rental#due_date - returns a date one week from when the record was created

    # find the date when the record was last returned 
    # add a week to the returned date 

    def due_date
        # binding.pry
        # created = Rental.all.map(&:created_at)
        self.created_at + 7.days
    end

    def past_due
        # check if past due date 
        # if self.due_date < self.updated_at
        #     return true
        # end
        self.due_date < self.updated_at
    end
    

    def self.past_due_date
         binding.pry        
        self.all.select{|due| due.past_due}
    end
    # returns a list of all the rentals past due date, currently rented or rented in the past

end