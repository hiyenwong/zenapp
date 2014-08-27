class BloodPressuresController < ApplicationController
  before_action :set_blood_pressure, only: [:show, :edit, :update, :destroy]

  # GET /blood_pressures
  # GET /blood_pressures.json
  def index
    @blood_pressures = BloodPressure.all
    
  end

  # GET /blood_pressures/1
  # GET /blood_pressures/1.json
  def show
  end

  # GET /blood_pressures/new
  def new
    @blood_pressure = BloodPressure.new
  end

  # GET /blood_pressures/1/edit
  def edit
  end

  # POST /blood_pressures
  # POST /blood_pressures.json
  def create
    @blood_pressure = BloodPressure.new(blood_pressure_params)

    respond_to do |format|
      if @blood_pressure.save
        format.html { redirect_to @blood_pressure, notice: 'Blood pressure was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blood_pressure }
      else
        format.html { render action: 'new' }
        format.json { render json: @blood_pressure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_pressures/1
  # PATCH/PUT /blood_pressures/1.json
  def update
    respond_to do |format|
      if @blood_pressure.update(blood_pressure_params)
        format.html { redirect_to @blood_pressure, notice: 'Blood pressure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blood_pressure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_pressures/1
  # DELETE /blood_pressures/1.json
  def destroy
    @blood_pressure.destroy
    respond_to do |format|
      format.html { redirect_to blood_pressures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_pressure
      @blood_pressure = BloodPressure.find(params[:id])
      def @blood_pressure.map
        @blood_pressure.pdias + ((@blood_pressure.psys - pdias)/3)
      end
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_pressure_params
      params.require(:blood_pressure).permit(:person_id, :psys, :pdias, :bp_date)
    end
end
