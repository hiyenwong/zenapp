class Person < ActiveRecord::Base
	has_many :weight_records
  has_many :blood_pressures
end
