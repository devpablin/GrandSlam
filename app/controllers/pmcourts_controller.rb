class PmcourtsController < ApplicationController
  before_action :set_pmcourt, only: [:show, :edit, :update, :destroy]

  # GET /pmcourts
  # GET /pmcourts.json
  def index
    @pmcourts = Pmcourt.all
  end

  # GET /pmcourts/1
  # GET /pmcourts/1.json
  def show
  end

  # GET /pmcourts/new
  def new
    @pmcourt = Pmcourt.new
  end

  # GET /pmcourts/1/edit
  def edit
  end

  # POST /pmcourts
  # POST /pmcourts.json
  def create
    @pmcourt = Pmcourt.new(pmcourt_params)

    respond_to do |format|
      if @pmcourt.save
        format.html { redirect_to @pmcourt, notice: 'Pmcourt was successfully created.' }
        format.json { render :show, status: :created, location: @pmcourt }
      else
        format.html { render :new }
        format.json { render json: @pmcourt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmcourts/1
  # PATCH/PUT /pmcourts/1.json
  def update
    respond_to do |format|
      if @pmcourt.update(pmcourt_params)
        format.html { redirect_to @pmcourt, notice: 'Pmcourt was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmcourt }
      else
        format.html { render :edit }
        format.json { render json: @pmcourt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmcourts/1
  # DELETE /pmcourts/1.json
  def destroy
    @pmcourt.destroy
    respond_to do |format|
      format.html { redirect_to pmcourts_url, notice: 'Pmcourt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmcourt
      @pmcourt = Pmcourt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmcourt_params
      params.require(:pmcourt).permit(:number, :pmplace_id)
    end
end
