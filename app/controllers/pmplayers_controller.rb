class PmplayersController < ApplicationController
  before_action :set_pmplayer, only: [:show, :edit, :update, :destroy]

  # GET /pmplayers
  # GET /pmplayers.json
  def index
    @pmplayers = Pmplayer.all
  end

  # GET /pmplayers/1
  # GET /pmplayers/1.json
  def show
  end

  # GET /pmplayers/new
  def new
    @pmplayer = Pmplayer.new
  end

  # GET /pmplayers/1/edit
  def edit
  end

  # POST /pmplayers
  # POST /pmplayers.json
  def create
    @pmplayer = Pmplayer.new(pmplayer_params)

    respond_to do |format|
      if @pmplayer.save
        format.html { redirect_to @pmplayer, notice: 'Pmplayer was successfully created.' }
        format.json { render :show, status: :created, location: @pmplayer }
      else
        format.html { render :new }
        format.json { render json: @pmplayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmplayers/1
  # PATCH/PUT /pmplayers/1.json
  def update
    respond_to do |format|
      if @pmplayer.update(pmplayer_params)
        format.html { redirect_to @pmplayer, notice: 'Pmplayer was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmplayer }
      else
        format.html { render :edit }
        format.json { render json: @pmplayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmplayers/1
  # DELETE /pmplayers/1.json
  def destroy
    @pmplayer.destroy
    respond_to do |format|
      format.html { redirect_to pmplayers_url, notice: 'Pmplayer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmplayer
      @pmplayer = Pmplayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmplayer_params
      params.require(:pmplayer).permit(:first_name, :last_name, :fechanacimiento)
    end
end
