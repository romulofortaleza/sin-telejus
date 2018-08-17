class UpperComponentsController < ApplicationController
  before_action :set_upper_component, only: [:show, :edit, :update, :destroy]

  # GET /upper_components
  # GET /upper_components.json
  def index
    @upper_components = UpperComponent.all
  end

  # GET /upper_components/1
  # GET /upper_components/1.json
  def show
  end

  # GET /upper_components/new
  def new
    @upper_component = UpperComponent.new
  end

  # GET /upper_components/1/edit
  def edit
  end

  # POST /upper_components
  # POST /upper_components.json
  def create
    @upper_component = UpperComponent.new(upper_component_params)

    respond_to do |format|
      if @upper_component.save
        format.html { redirect_to @upper_component, notice: 'Upper component was successfully created.' }
        format.json { render :show, status: :created, location: @upper_component }
      else
        format.html { render :new }
        format.json { render json: @upper_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upper_components/1
  # PATCH/PUT /upper_components/1.json
  def update
    respond_to do |format|
      if @upper_component.update(upper_component_params)
        format.html { redirect_to @upper_component, notice: 'Upper component was successfully updated.' }
        format.json { render :show, status: :ok, location: @upper_component }
      else
        format.html { render :edit }
        format.json { render json: @upper_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upper_components/1
  # DELETE /upper_components/1.json
  def destroy
    @upper_component.destroy
    respond_to do |format|
      format.html { redirect_to upper_components_url, notice: 'Upper component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upper_component
      @upper_component = UpperComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upper_component_params
      params.require(:upper_component).permit(:organ, :last_update, :composition, :address)
    end
end
