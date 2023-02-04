class ExercisesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    skip_before_action :authorized

    def index
        exercises = Exercise.all
        render json: exercises, status: :ok
    end

    def show
        exercise = find_exercise
        render json: exercise, serializer: ExerciseSerializer
    end

    private 

    def find_exercise 
        exercise = Exercise.find(params[:id])
     end 

     def render_record_not_found 
        render json: { error: " Exercise not found" }, status: :not_found 
    end 

end
