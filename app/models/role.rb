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
        if auditions.first == auditions.first
            auditions.first
        else 
       'no actor has been hired for this role'
        end
    end
    def understudy
        if auditions.last == auditions.last 
            return auditions.last
        else 
            return 'no actor has been hired for understudy for this role' 
        end
    end
end