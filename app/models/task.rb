class Task < ApplicationRecord
    belongs_to :list
    def exists
        if self.name == nil
            false  
        else
            true
        end
    end
end
