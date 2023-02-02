class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :target,  :bodyPart, :equipment, :gifUrl
end
