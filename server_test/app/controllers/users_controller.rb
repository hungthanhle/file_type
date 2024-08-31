class UsersController < ActionController::Base
  skip_before_action :verify_authenticity_token
  
  # POST /users or /users.json
  def create
    render json: { success: true }
  end
end
