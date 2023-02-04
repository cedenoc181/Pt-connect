class PhysicalTherapistsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    skip_before_action :authorized, only: [:create, :index, :show]


    def index
        pt = PhysicalTherapist.all
        render json: pt, status: :ok
    end

    def show
        pt = find_physical_therapist
        render json: pt, serializer: PhysicalTherapistSerializer
    end

    def create
        pt = PhysicalTherapist.create!(create_physical_therapist_params)
        # @token = encode_token(physical_therapist_id: physical_therapist.id)
        render json: pt
        # {
        #     pt: PhysicalTherapistSerializer.new(pt),
        #     token: @token
        #     }, status: :created
    end

    def update
        pt = find_physical_therapist
        pt.update!(update_physical_therapist_params)
        render json: pt
    end

    def destroy
        pt = find_physical_therapist
        pt.destroy
        head :no_content 
    end

    private 

    def find_physical_therapist 
       pt = PhysicalTherapist.find(params[:id])
    end 

    def create_physical_therapist_params
        params.permit(:first_name, :last_name, :clinic_address, :specialization, :phone_number)
    end

    def update_physical_therapist_params
        params.permit(:first_name, :last_name, :profile_picture, :clinic_address, :specialization, :title, :insurance, :home_visits, :about_me, :rating, :phone_number, :studies)
    end

    def render_record_not_found 
        render json: { error: "Physcial Therapist not found" }, status: :not_found 
    end 

end
