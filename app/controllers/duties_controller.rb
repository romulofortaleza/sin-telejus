class DutiesController < ApplicationController
  before_action :set_duty, only: [:show, :edit, :update, :destroy, :file]
  before_action :options_for_select, only: [:index, :new, :edit]

  # GET /duties
  # GET /duties.json
  def index
    @duties = Duty.all
  end

  # GET /duties/1
  # GET /duties/1.json
  def show
  end

  # GET /duties/new
  def new
    @duty = Duty.new
  end

  # GET /duties/1/edit
  def edit
  end

  # POST /duties
  # POST /duties.json
  def create
    @duty = Duty.new(duty_params)
    uploaded_io = params[:duty][:file]
    # File.open(Rails.root.join("public", "uploads", uploaded_io.original_filename), "wb") do |file|
    #   file.write(uploaded_io.read)
    # end

    @duty.file = uploaded_io.original_filename
    @duty.activity_id = params[:activity]
    @duty.data = uploaded_io.read

    respond_to do |format|
      if @duty.save
        activitie = Activity.new
        activitie.description = @duty.title
        activitie.isMenu = true
        activitie.action = "/duties/#{@duty.id}"
        activitie.activity_id = params[:activity]
        activitie.save

        roles = Role.all
        roles.each do |role|
          role.activities << activitie
          role.save
        end

        format.html { redirect_to @duty, notice: t(".success") }
        format.json { render :show, status: :created, location: @duty }
      else
        format.html { render :new }
        format.json { render json: @duty.errors, status: :unprocessable_entity }
      end
    end
  end

  def file
    send_data @duty.data, :filename => @duty.file, :type => "application/pdf"
  end

  # PATCH/PUT /duties/1
  # PATCH/PUT /duties/1.json
  def update
    respond_to do |format|
      if @duty.update(duty_params)
        format.html { redirect_to @duty, notice: t(".success") }
        format.json { render :show, status: :ok, location: @duty }
      else
        format.html { render :edit }
        format.json { render json: @duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duties/1
  # DELETE /duties/1.json
  def destroy
    activity = Activity.where(action: "/duties/#{@duty.id}").first
    ActivityRole.where(activity_id: activity.id).destroy_all
    activity.destroy
    respond_to do |format|
      if @duty.destroy
        format.html { redirect_to duties_url, notice: t(".success") }
      else
        format.html { redirect_to duties_url, notice: t(".danger") }
        format.json { head :no_content }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_duty
    @duty = Duty.find(params[:id])
  end

  def options_for_select
    @options_for_select_parent = Activity.all_roots
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def duty_params
    params.require(:duty).permit(:title, :file, :activity_id)
  end
end
