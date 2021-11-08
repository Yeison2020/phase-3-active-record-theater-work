class Role < ActiveRecord::Base
    has_many :auditions
    def actors
        auditions.map do |name|
           name.actor
        end
    end
    def location
        auditions.map do |name|
           name.location
        end
    end
    def lead
        found = self.auditions.find_by(hired: true)

        if !found 
            'no actor has been hired for this role'        
        else 
            found
        end
        
   
    end
    def understudy
        data = self.auditions.where(hired: true)
        if data.size > 1
            data[1]
        else 
            'no actor has been hired for understudy for this role'
        end
        
    end
end