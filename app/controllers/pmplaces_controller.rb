class PmplacesController < ApplicationController
  before_action :set_pmplace, only: [:show, :edit, :update, :destroy]

  # GET /pmplaces
  # GET /pmplaces.json
  def index
    @pmplaces = Pmplace.all
  end

  # GET /pmplaces/1
  # GET /pmplaces/1.json
  def show
  end

  # GET /pmplaces/new
  def new
    @pmplace = Pmplace.new
  end

  # GET /pmplaces/1/edit
  def edit
  end

  # POST /pmplaces
  # POST /pmplaces.json
  def create
    @pmplace = Pmplace.new(pmplace_params)

    respond_to do |format|
      if @pmplace.save
        format.html { redirect_to @pmplace, notice: 'Pmplace was successfully created.' }
        format.json { render :show, status: :created, location: @pmplace }
      else
        format.html { render :new }
        format.json { render json: @pmplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmplaces/1
  # PATCH/PUT /pmplaces/1.json
  def update
    respond_to do |format|
      if @pmplace.update(pmplace_params)
        format.html { redirect_to @pmplace, notice: 'Pmplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmplace }
      else
        format.html { render :edit }
        format.json { render json: @pmplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmplaces/1
  # DELETE /pmplaces/1.json
  def destroy
    @pmplace.destroy
    respond_to do |format|
      format.html { redirect_to pmplaces_url, notice: 'Pmplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmplace
      @pmplace = Pmplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmplace_params
      params.require(:pmplace).permit(:name, :pmcountry_id)
    end
end
