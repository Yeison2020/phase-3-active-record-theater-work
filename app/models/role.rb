class Role < ActiveRecord::Base
    has_many :auditions
    def actors
        auditions.map do |name|
            name.name
        end
        

    end
  
end