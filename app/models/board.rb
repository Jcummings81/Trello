class Board < ApplicationRecord
    has_many :lists, dependent: :destroy
   
    def exists
        if self.name == nil
            false  
        else
            true
        end
    end
end
