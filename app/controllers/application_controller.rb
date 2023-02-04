class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  before_action :authorized

  def encode_token(payload)
      JWT.encode(payload, 'password') 
  end

  def decoded_token
      header = request.headers['Authorization']
      if header
          token = header.split(" ")[1]
          begin
              JWT.decode(token, 'password')
          rescue JWT::DecodeError
              nil
          end
      end
  end

  def current_user 
      if decoded_token
          user_id = decoded_token[0]['user_id']
          @user = User.find_by(id: user_id)
      end
  end
  
  def authorized
      unless !!current_user
      render json: { message: 'Please log in' }, status: :unauthorized
      end
  end

  # def current_pt 
  #     if decoded_token
  #         physical_therapist_id = decoded_token[0]['physical_therapist_id']
  #         @pt = PhysicalTherapist.find_by(id: physical_therapist_id)
  #     end
  # end
  
  # def authorized
  #     unless !!current_pt
  #     render json: { message: 'Please log in' }, status: :unauthorized
  #     end
  # end

  def render_unprocessable_entity(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end 



end