class PhysicalTherapist < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :users, through: :appointments 
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

end
