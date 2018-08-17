class AddressOrgansController < ApplicationController
  before_action :set_address_organ, only: [:show, :edit, :update, :destroy]

  # GET /address_organs
  # GET /address_organs.json
  def index
    @address_organs = AddressOrgan.all
  end

  # GET /address_organs/1
  # GET /address_organs/1.json
  def show
  end

  # GET /address_organs/new
  def new
    @address_organ = AddressOrgan.new
  end

  # GET /address_organs/1/edit
  def edit
  end

  # POST /address_organs
  # POST /address_organs.json
  def create
    @address_organ = AddressOrgan.new(address_organ_params)

    respond_to do |format|
      if @address_organ.save
        format.html { redirect_to @address_organ, notice: 'Address organ was successfully created.' }
        format.json { render :show, status: :created, location: @address_organ }
      else
        format.html { render :new }
        format.json { render json: @address_organ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_organs/1
  # PATCH/PUT /address_organs/1.json
  def update
    respond_to do |format|
      if @address_organ.update(address_organ_params)
        format.html { redirect_to @address_organ, notice: 'Address organ was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_organ }
      else
        format.html { render :edit }
        format.json { render json: @address_organ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_organs/1
  # DELETE /address_organs/1.json
  def destroy
    @address_organ.destroy
    respond_to do |format|
      format.html { redirect_to address_organs_url, notice: 'Address organ was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_organ
      @address_organ = AddressOrgan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_organ_params
      params.require(:address_organ).permit(:code, :organ, :last_update, :type, :name, :address, :phone, :email)
    end
end
