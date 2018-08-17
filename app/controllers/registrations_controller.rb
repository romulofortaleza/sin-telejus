class RegistrationsController < Devise::RegistrationsController
    prepend_before_action :require_no_authentication, only: :cancel
    before_action :set_role_options, only:  [:edit, :new, :create, :update]
  
    def create
      @user = User.new(sign_up_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :controller => 'users', :action => 'new' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def sign_up(resource_name, resource)
    end
  
    private
    def sign_up_params
      params.require(:user).permit(:username, :role_id)
    end
  
    def after_sign_up_path_for(resource)
      users_path
    end

    def set_role_options
      @role_options_for_select = Role.all
    end
end
  