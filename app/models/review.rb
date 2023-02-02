class Review < ApplicationRecord
    belongs_to :user 
    belongs_to :physical_therapist
end
