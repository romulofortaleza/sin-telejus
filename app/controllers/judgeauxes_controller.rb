class JudgeauxesController < ApplicationController
  before_action :set_judgeaux, only: [:show, :edit, :update, :destroy]

  # GET /judgeauxes
  # GET /judgeauxes.json
  def index
    @judgeauxes = Judgeaux.all
  end

  # GET /judgeauxes/1
  # GET /judgeauxes/1.json
  def show
  end

  # GET /judgeauxes/new
  def new
    @judgeaux = Judgeaux.new
  end

  # GET /judgeauxes/1/edit
  def edit
  end

  # POST /judgeauxes
  # POST /judgeauxes.json
  def create
    @judgeaux = Judgeaux.new(judgeaux_params)

    respond_to do |format|
      if @judgeaux.save
        format.html { redirect_to @judgeaux, notice: 'Judgeaux was successfully created.' }
        format.json { render :show, status: :created, location: @judgeaux }
      else
        format.html { render :new }
        format.json { render json: @judgeaux.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /judgeauxes/1
  # PATCH/PUT /judgeauxes/1.json
  def update
    respond_to do |format|
      if @judgeaux.update(judgeaux_params)
        format.html { redirect_to @judgeaux, notice: 'Judgeaux was successfully updated.' }
        format.json { render :show, status: :ok, location: @judgeaux }
      else
        format.html { render :edit }
        format.json { render json: @judgeaux.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /judgeauxes/1
  # DELETE /judgeauxes/1.json
  def destroy
    @judgeaux.destroy
    respond_to do |format|
      format.html { redirect_to judgeauxes_url, notice: 'Judgeaux was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_judgeaux
      @judgeaux = Judgeaux.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def judgeaux_params
      params.require(:judgeaux).permit(:code, :organ, :last_update, :judge_title, :judge_description)
    end
end
