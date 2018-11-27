class PmprizesController < ApplicationController
  before_action :set_pmprize, only: [:show, :edit, :update, :destroy]

  # GET /pmprizes
  # GET /pmprizes.json
  def index
    @pmprizes = Pmprize.all
  end

  # GET /pmprizes/1
  # GET /pmprizes/1.json
  def show
  end

  # GET /pmprizes/new
  def new
    @pmprize = Pmprize.new
  end

  # GET /pmprizes/1/edit
  def edit
  end

  # POST /pmprizes
  # POST /pmprizes.json
  def create
    @pmprize = Pmprize.new(pmprize_params)

    respond_to do |format|
      if @pmprize.save
        format.html { redirect_to @pmprize, notice: 'Pmprize was successfully created.' }
        format.json { render :show, status: :created, location: @pmprize }
      else
        format.html { render :new }
        format.json { render json: @pmprize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmprizes/1
  # PATCH/PUT /pmprizes/1.json
  def update
    respond_to do |format|
      if @pmprize.update(pmprize_params)
        format.html { redirect_to @pmprize, notice: 'Pmprize was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmprize }
      else
        format.html { render :edit }
        format.json { render json: @pmprize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmprizes/1
  # DELETE /pmprizes/1.json
  def destroy
    @pmprize.destroy
    respond_to do |format|
      format.html { redirect_to pmprizes_url, notice: 'Pmprize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmprize
      @pmprize = Pmprize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmprize_params
      params.require(:pmprize).permit(:amount, :name)
    end
end
