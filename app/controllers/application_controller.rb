class ApplicationController < ActionController::API
    before_action :authorize_request
  
    def not_found
      render json: { error: 'not_found' }
    end
  
    private
  
    def authorize_request
      @header = request.headers['Authorization'] || params['Authorization']
      if @header.blank?
        render json: { error: 'Missing Authorization header' }, status: :unauthorized
        return
      end
  
      header = @header.split(' ').last
      begin
        @decoded = JsonWebToken.decode(header)  # Fix here
        @current_user = User.find(@decoded[:user_id])
      rescue JWT::DecodeError => e
        render json: { error: 'Invalid token' }, status: :unauthorized
      rescue ActiveRecord::RecordNotFound => e
        render json: { error: 'User not found' }, status: :unauthorized
      end
    end
  end
  