class PmtrainersController < ApplicationController
  before_action :set_pmtrainer, only: [:show, :edit, :update, :destroy]

  # GET /pmtrainers
  # GET /pmtrainers.json
  def index
    @pmtrainers = Pmtrainer.all
  end

  # GET /pmtrainers/1
  # GET /pmtrainers/1.json
  def show
  end

  # GET /pmtrainers/new
  def new
    @pmtrainer = Pmtrainer.new
  end

  # GET /pmtrainers/1/edit
  def edit
  end

  # POST /pmtrainers
  # POST /pmtrainers.json
  def create
    @pmtrainer = Pmtrainer.new(pmtrainer_params)

    respond_to do |format|
      if @pmtrainer.save
        format.html { redirect_to @pmtrainer, notice: 'Pmtrainer was successfully created.' }
        format.json { render :show, status: :created, location: @pmtrainer }
      else
        format.html { render :new }
        format.json { render json: @pmtrainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmtrainers/1
  # PATCH/PUT /pmtrainers/1.json
  def update
    respond_to do |format|
      if @pmtrainer.update(pmtrainer_params)
        format.html { redirect_to @pmtrainer, notice: 'Pmtrainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmtrainer }
      else
        format.html { render :edit }
        format.json { render json: @pmtrainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmtrainers/1
  # DELETE /pmtrainers/1.json
  def destroy
    @pmtrainer.destroy
    respond_to do |format|
      format.html { redirect_to pmtrainers_url, notice: 'Pmtrainer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmtrainer
      @pmtrainer = Pmtrainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmtrainer_params
      params.require(:pmtrainer).permit(:nombre, :apellido)
    end
end
