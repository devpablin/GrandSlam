class PmcountriesController < ApplicationController
  before_action :set_pmcountry, only: [:show, :edit, :update, :destroy]

  # GET /pmcountries
  # GET /pmcountries.json
  def index
    @pmcountries = Pmcountry.all
  end

  # GET /pmcountries/1
  # GET /pmcountries/1.json
  def show
  end

  # GET /pmcountries/new
  def new
    @pmcountry = Pmcountry.new
  end

  # GET /pmcountries/1/edit
  def edit
  end

  # POST /pmcountries
  # POST /pmcountries.json
  def create
    @pmcountry = Pmcountry.new(pmcountry_params)

    respond_to do |format|
      if @pmcountry.save
        format.html { redirect_to @pmcountry, notice: 'Pmcountry was successfully created.' }
        format.json { render :show, status: :created, location: @pmcountry }
      else
        format.html { render :new }
        format.json { render json: @pmcountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmcountries/1
  # PATCH/PUT /pmcountries/1.json
  def update
    respond_to do |format|
      if @pmcountry.update(pmcountry_params)
        format.html { redirect_to @pmcountry, notice: 'Pmcountry was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmcountry }
      else
        format.html { render :edit }
        format.json { render json: @pmcountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmcountries/1
  # DELETE /pmcountries/1.json
  def destroy
    @pmcountry.destroy
    respond_to do |format|
      format.html { redirect_to pmcountries_url, notice: 'Pmcountry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmcountry
      @pmcountry = Pmcountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmcountry_params
      params.require(:pmcountry).permit(:name)
    end
end
