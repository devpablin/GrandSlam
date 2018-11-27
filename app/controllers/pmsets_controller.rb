class PmsetsController < ApplicationController
  before_action :set_pmset, only: [:show, :edit, :update, :destroy]

  # GET /pmsets
  # GET /pmsets.json
  def index
    @pmsets = Pmset.all
  end

  # GET /pmsets/1
  # GET /pmsets/1.json
  def show
  end

  # GET /pmsets/new
  def new
    @pmset = Pmset.new
  end

  # GET /pmsets/1/edit
  def edit
  end

  # POST /pmsets
  # POST /pmsets.json
  def create
    @pmset = Pmset.new(pmset_params)

    respond_to do |format|
      if @pmset.save
        format.html { redirect_to @pmset, notice: 'Pmset was successfully created.' }
        format.json { render :show, status: :created, location: @pmset }
      else
        format.html { render :new }
        format.json { render json: @pmset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmsets/1
  # PATCH/PUT /pmsets/1.json
  def update
    respond_to do |format|
      if @pmset.update(pmset_params)
        format.html { redirect_to @pmset, notice: 'Pmset was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmset }
      else
        format.html { render :edit }
        format.json { render json: @pmset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmsets/1
  # DELETE /pmsets/1.json
  def destroy
    @pmset.destroy
    respond_to do |format|
      format.html { redirect_to pmsets_url, notice: 'Pmset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmset
      @pmset = Pmset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmset_params
      params.require(:pmset).permit(:local_points, :visitor_points)
    end
end
