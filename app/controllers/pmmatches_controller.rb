class PmmatchesController < ApplicationController
  before_action :set_pmmatch, only: [:show, :edit, :update, :destroy]

  # GET /pmmatches
  # GET /pmmatches.json
  def index
    @pmmatches = Pmmatch.all
  end

  # GET /pmmatches/1
  # GET /pmmatches/1.json
  def show
  end

  # GET /pmmatches/new
  def new
    @pmmatch = Pmmatch.new
  end

  # GET /pmmatches/1/edit
  def edit
  end

  # POST /pmmatches
  # POST /pmmatches.json
  def create
    @pmmatch = Pmmatch.new(pmmatch_params)

    respond_to do |format|
      if @pmmatch.save
        format.html { redirect_to @pmmatch, notice: 'Pmmatch was successfully created.' }
        format.json { render :show, status: :created, location: @pmmatch }
      else
        format.html { render :new }
        format.json { render json: @pmmatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmmatches/1
  # PATCH/PUT /pmmatches/1.json
  def update
    respond_to do |format|
      if @pmmatch.update(pmmatch_params)
        format.html { redirect_to @pmmatch, notice: 'Pmmatch was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmmatch }
      else
        format.html { render :edit }
        format.json { render json: @pmmatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmmatches/1
  # DELETE /pmmatches/1.json
  def destroy
    @pmmatch.destroy
    respond_to do |format|
      format.html { redirect_to pmmatches_url, notice: 'Pmmatch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmmatch
      @pmmatch = Pmmatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmmatch_params
      params.require(:pmmatch).permit(:date, :score1, :score2, :pmcourt_id_id, :pmround_id_id, :pmtournament_id_id)
    end
end
