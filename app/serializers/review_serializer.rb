class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :physical_therapist_id, :review_header, :photo, :star_rating, :users_review,  :user, :physical_therapist
end
