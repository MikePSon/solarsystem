class OrbitersController < ApplicationController
  before_action :set_orbiter, only: [:show, :edit, :update, :destroy]

  # GET /orbiters
  # GET /orbiters.json
  def index
    @orbiters = Orbiter.all
  end

  # GET /orbiters/1
  # GET /orbiters/1.json
  def show
  end

  # GET /orbiters/new
  def new
    @orbiter = Orbiter.new
  end

  # GET /orbiters/1/edit
  def edit
  end

  # POST /orbiters
  # POST /orbiters.json
  def create
    @orbiter = Orbiter.new(orbiter_params)

    respond_to do |format|
      if @orbiter.save
        format.html { redirect_to @orbiter, notice: 'Orbiter was successfully created.' }
        format.json { render :show, status: :created, location: @orbiter }
      else
        format.html { render :new }
        format.json { render json: @orbiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orbiters/1
  # PATCH/PUT /orbiters/1.json
  def update
    respond_to do |format|
      if @orbiter.update(orbiter_params)
        format.html { redirect_to @orbiter, notice: 'Orbiter was successfully updated.' }
        format.json { render :show, status: :ok, location: @orbiter }
      else
        format.html { render :edit }
        format.json { render json: @orbiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orbiters/1
  # DELETE /orbiters/1.json
  def destroy
    @orbiter.destroy
    respond_to do |format|
      format.html { redirect_to orbiters_url, notice: 'Orbiter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orbiter
      @orbiter = Orbiter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orbiter_params
      params.require(:orbiter).permit(:name, :orbit_distance, :orbit_speed, :diameter, :mass)
    end
end
