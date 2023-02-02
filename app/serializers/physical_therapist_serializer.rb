class PhysicalTherapistSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :profile_picture, :clinic_address, :specialization, :title, :insurances, :home_visits, :about_me, :rating, :studies, :phone_number, :appointments, :users, :reviews
end
