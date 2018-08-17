class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :set_role_options, only:  [:edit, :new, :create, :update]
  
    # GET /service_types
    # GET /service_types.json
    def index          
       
      @users = User.all
    end
  
    # GET /service_types/1
    # GET /service_types/1.json
    def show      
      
    end
  
    
    def new
      @user = User.new
      
    end
  
    def edit
      
    end
  
    def create
      
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: t('.success') }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: t('.success') }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def destroy
                  
      @user.destroy
      respond_to do |format|
        if(@user.errors.count > 0)
            format.html { redirect_to users_url, alert: @user.errors.first.last }
        else
            format.html { redirect_to users_url, notice: t('.success') }
            format.json { head :no_content }
        end
      end     
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:user).permit(:username, :role_id)
      end

      def set_role_options
        @role_options_for_select = Role.all
      end
end
  