class PmroundsController < ApplicationController
  before_action :set_pmround, only: [:show, :edit, :update, :destroy]

  # GET /pmrounds
  # GET /pmrounds.json
  def index
    @pmrounds = Pmround.all
  end

  # GET /pmrounds/1
  # GET /pmrounds/1.json
  def show
  end

  # GET /pmrounds/new
  def new
    @pmround = Pmround.new
  end

  # GET /pmrounds/1/edit
  def edit
  end

  # POST /pmrounds
  # POST /pmrounds.json
  def create
    @pmround = Pmround.new(pmround_params)

    respond_to do |format|
      if @pmround.save
        format.html { redirect_to @pmround, notice: 'Pmround was successfully created.' }
        format.json { render :show, status: :created, location: @pmround }
      else
        format.html { render :new }
        format.json { render json: @pmround.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmrounds/1
  # PATCH/PUT /pmrounds/1.json
  def update
    respond_to do |format|
      if @pmround.update(pmround_params)
        format.html { redirect_to @pmround, notice: 'Pmround was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmround }
      else
        format.html { render :edit }
        format.json { render json: @pmround.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmrounds/1
  # DELETE /pmrounds/1.json
  def destroy
    @pmround.destroy
    respond_to do |format|
      format.html { redirect_to pmrounds_url, notice: 'Pmround was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmround
      @pmround = Pmround.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmround_params
      params.require(:pmround).permit(:round)
    end
end
