class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :exercise_id, :user, :exercise
end
