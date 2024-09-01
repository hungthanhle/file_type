class UsersController < ActionController::Base
  skip_before_action :verify_authenticity_token
  
  # POST /users or /users.json
  def create
    render json: { success: true }
  end

  def send_a_file
    send_file 'public/charizard.png' # default download
  end

  def render_a_file
    render file: 'public/charizard.png'
  end

  def send_a_data
    user = User.first
    image = user.avatar
    send_data image.download, type: image.content_type
  end

  def apk
    send_file 'public/pgs.apk' # default download
  end

  def new
    @user = User.new
  end
  def create_user
    user = User.create!(user_params)
    render json: { success: true }
  end
  private
    def user_params
      params.require(:user).permit(:avatar)
    end
end
