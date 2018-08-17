class ActivityRolesController < ApplicationController
  before_action :set_activity_role, only: [:show, :edit, :update, :destroy]
  before_action :options_for_select_role, only: [:new, :edit]

  # GET /activity_roles
  # GET /activity_roles.json
  def index
    @activity_roles = ActivityRole.all
  end

  # GET /activity_roles/1
  # GET /activity_roles/1.json
  def show
  end

  # GET /activity_roles/new
  def new
    @activity_role = ActivityRole.new
  end

  # GET /activity_roles/1/edit
  def edit
  end

  # POST /activity_roles
  # POST /activity_roles.json
  def create
    @activity_role = ActivityRole.new(activity_role_params)

    respond_to do |format|
      if @activity_role.save
        format.html { redirect_to @activity_role, notice: t('.success') }
        format.json { render :show, status: :created, location: @activity_role }
      else
        format.html { render :new }
        format.json { render json: @activity_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_roles/1
  # PATCH/PUT /activity_roles/1.json
  def update
    respond_to do |format|
      if @activity_role.update(activity_role_params)
        format.html { redirect_to @activity_role, notice: t('.success') }
        format.json { render :show, status: :ok, location: @activity_role }
      else
        format.html { render :edit }
        format.json { render json: @activity_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_roles/1
  # DELETE /activity_roles/1.json
  def destroy
    @activity_role.destroy
    respond_to do |format|
    if @activity_role.errors.count > 0
      format.html { redirect_to activity_roles_url, alert: @activity_role.errors.first.last }
    else
      format.html { redirect_to activity_roles_url, notice: t('.success') }
      format.json { head :no_content }
    end
  end
end
  def list_not
    @activities = Activity.all_not_activity(params[:role_id])
    render partial: 'activity_roles/activity_options'
  end

  private

    def options_for_select_role
      @role_options_for_select = Role.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_activity_role
      @activity_role = ActivityRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_role_params
      params.require(:activity_role).permit(:activity_id, :role_id, :granted)
    end
end
