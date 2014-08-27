class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show

  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
      gon.person_name = @person.chinesename
      person_weight_records = Array.new
      person_bp_records = Hash.new
      person_bp_records['psys'] = Array.new
      person_bp_records['pdias'] = Array.new
      person_bp_records['map'] = Array.new
      person_bp_records['ppulse'] = Array.new
      @person.blood_pressures.order('bp_date ASC').each {|data| person_bp_records['psys'].push [data.bp_date.to_datetime.to_i*1000,data.psys.to_i]}
      @person.blood_pressures.order('bp_date ASC').each {|data| person_bp_records['map'].push [data.bp_date.to_datetime.to_i*1000,data.pdias.to_i+((data.psys.to_i - data.pdias)/3)]}
      @person.blood_pressures.order('bp_date ASC').each {|data| person_bp_records['ppulse'].push [data.bp_date.to_datetime.to_i * 1000, data.psys - data.pdias]}
      
      @person.blood_pressures.order('bp_date ASC').each {|data| person_bp_records['pdias'].push [data.bp_date.to_datetime.to_i*1000,data.pdias.to_i]}
      @person.weight_records.order('test_datetime ASC').each {|data| person_weight_records.push [data.test_datetime.to_datetime.to_i*1000,data.weight.to_i]}
      gon.person_weight_records = person_weight_records
      gon.person_psys = person_bp_records['psys']
      gon.person_pdia = person_bp_records['pdias']
      gon.person_map = person_bp_records['map']
      gon.person_ppulse = person_bp_records['ppulse']

    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:chinesename,:englishname, :birthday, :gender,:status)
    end
end
