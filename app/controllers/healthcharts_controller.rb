class HealthchartsController < ApplicationController
  def index
    @data=Person.all
    @person_data=Hash.new
    @people = Array.new
    Person.select("id","chinesename").each do |person|
      # @person_data["#{person.id}"]=person.chinesename
      # @person_data["#{person.id}_wr"]=person.weight_records.select("test_datetime","weight")

      @people.push(@person_data["#{person.id}"]=person.chinesename,@person_data["#{person.id}_wr"]=person.weight_records.select("test_datetime","weight").order('test_datetime DESC'))
    end
    logger.debug @people.to_json
  end

  private 
  def change(person_wr)
  end
end
