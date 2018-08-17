class ComponentCourtsController < ApplicationController
  before_action :set_component_court, only: [:show, :edit, :update, :destroy]

  # GET /component_courts
  # GET /component_courts.json
  def index
    @component_courts = ComponentCourt.all
  end

  # GET /component_courts/1
  # GET /component_courts/1.json
  def show
  end

  # GET /component_courts/new
  def new
    @component_court = ComponentCourt.new
  end

  # GET /component_courts/1/edit
  def edit
  end

  # POST /component_courts
  # POST /component_courts.json
  def create
    @component_court = ComponentCourt.new(component_court_params)

    respond_to do |format|
      if @component_court.save
        format.html { redirect_to @component_court, notice: 'Component court was successfully created.' }
        format.json { render :show, status: :created, location: @component_court }
      else
        format.html { render :new }
        format.json { render json: @component_court.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_courts/1
  # PATCH/PUT /component_courts/1.json
  def update
    respond_to do |format|
      if @component_court.update(component_court_params)
        format.html { redirect_to @component_court, notice: 'Component court was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_court }
      else
        format.html { render :edit }
        format.json { render json: @component_court.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_courts/1
  # DELETE /component_courts/1.json
  def destroy
    @component_court.destroy
    respond_to do |format|
      format.html { redirect_to component_courts_url, notice: 'Component court was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_court
      @component_court = ComponentCourt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_court_params
      params.require(:component_court).permit(:code, :organ, :last_update, :public_defender, :composition)
    end
end
