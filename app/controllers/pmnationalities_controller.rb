class PmnationalitiesController < ApplicationController
  before_action :set_pmnationality, only: [:show, :edit, :update, :destroy]

  # GET /pmnationalities
  # GET /pmnationalities.json
  def index
    @pmnationalities = Pmnationality.all
  end

  # GET /pmnationalities/1
  # GET /pmnationalities/1.json
  def show
  end

  # GET /pmnationalities/new
  def new
    @pmnationality = Pmnationality.new
  end

  # GET /pmnationalities/1/edit
  def edit
  end

  # POST /pmnationalities
  # POST /pmnationalities.json
  def create
    @pmnationality = Pmnationality.new(pmnationality_params)

    respond_to do |format|
      if @pmnationality.save
        format.html { redirect_to @pmnationality, notice: 'Pmnationality was successfully created.' }
        format.json { render :show, status: :created, location: @pmnationality }
      else
        format.html { render :new }
        format.json { render json: @pmnationality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmnationalities/1
  # PATCH/PUT /pmnationalities/1.json
  def update
    respond_to do |format|
      if @pmnationality.update(pmnationality_params)
        format.html { redirect_to @pmnationality, notice: 'Pmnationality was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmnationality }
      else
        format.html { render :edit }
        format.json { render json: @pmnationality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmnationalities/1
  # DELETE /pmnationalities/1.json
  def destroy
    @pmnationality.destroy
    respond_to do |format|
      format.html { redirect_to pmnationalities_url, notice: 'Pmnationality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmnationality
      @pmnationality = Pmnationality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmnationality_params
      params.require(:pmnationality).permit(:name)
    end
end
