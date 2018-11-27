class PmtournamentsController < ApplicationController
  before_action :set_pmtournament, only: [:show, :edit, :update, :destroy]

  # GET /pmtournaments
  # GET /pmtournaments.json
  def index
    @pmtournaments = Pmtournament.all
  end

  # GET /pmtournaments/1
  # GET /pmtournaments/1.json
  def show
  end

  # GET /pmtournaments/new
  def new
    @pmtournament = Pmtournament.new
  end

  # GET /pmtournaments/1/edit
  def edit
  end

  # POST /pmtournaments
  # POST /pmtournaments.json
  def create
    @pmtournament = Pmtournament.new(pmtournament_params)

    respond_to do |format|
      if @pmtournament.save
        format.html { redirect_to @pmtournament, notice: 'Pmtournament was successfully created.' }
        format.json { render :show, status: :created, location: @pmtournament }
      else
        format.html { render :new }
        format.json { render json: @pmtournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmtournaments/1
  # PATCH/PUT /pmtournaments/1.json
  def update
    respond_to do |format|
      if @pmtournament.update(pmtournament_params)
        format.html { redirect_to @pmtournament, notice: 'Pmtournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmtournament }
      else
        format.html { render :edit }
        format.json { render json: @pmtournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmtournaments/1
  # DELETE /pmtournaments/1.json
  def destroy
    @pmtournament.destroy
    respond_to do |format|
      format.html { redirect_to pmtournaments_url, notice: 'Pmtournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmtournament
      @pmtournament = Pmtournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmtournament_params
      params.require(:pmtournament).permit(:name, :year, :init_date, :end_date, :pmplace_id_id)
    end
end
