class PmrefereesController < ApplicationController
  before_action :set_pmreferee, only: [:show, :edit, :update, :destroy]

  # GET /pmreferees
  # GET /pmreferees.json
  def index
    @pmreferees = Pmreferee.all
  end

  # GET /pmreferees/1
  # GET /pmreferees/1.json
  def show
  end

  # GET /pmreferees/new
  def new
    @pmreferee = Pmreferee.new
  end

  # GET /pmreferees/1/edit
  def edit
  end

  # POST /pmreferees
  # POST /pmreferees.json
  def create
    @pmreferee = Pmreferee.new(pmreferee_params)

    respond_to do |format|
      if @pmreferee.save
        format.html { redirect_to @pmreferee, notice: 'Pmreferee was successfully created.' }
        format.json { render :show, status: :created, location: @pmreferee }
      else
        format.html { render :new }
        format.json { render json: @pmreferee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmreferees/1
  # PATCH/PUT /pmreferees/1.json
  def update
    respond_to do |format|
      if @pmreferee.update(pmreferee_params)
        format.html { redirect_to @pmreferee, notice: 'Pmreferee was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmreferee }
      else
        format.html { render :edit }
        format.json { render json: @pmreferee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmreferees/1
  # DELETE /pmreferees/1.json
  def destroy
    @pmreferee.destroy
    respond_to do |format|
      format.html { redirect_to pmreferees_url, notice: 'Pmreferee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmreferee
      @pmreferee = Pmreferee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmreferee_params
      params.require(:pmreferee).permit(:first_name, :last_name)
    end
end
