class List < ApplicationRecord
    belongs_to :board
    has_many :tasks, dependent: :destroy
    def exists
        if self.name == nil
            false  
        else
            true
        end
    end
end
