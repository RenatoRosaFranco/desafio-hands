class Dashboard::UsersController < Dashboard::HomeController

  etag{}
  layout 'dashboard'
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :exception
  respond_to :html, :json, :js

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def new
    @user = User.new
    respond_with(@user)
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with(:dashboard, @user)
  end

  def update
    @user.update(user_params)
    respond_with(:dashboard, @user)
  end

  def destroy
    @user.destroy
    respond_with(:dashboard, @user)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:avatar, :name, :email, :password, :password_confirmation, :admin)
    end
end
