class Blog < ActiveRecord::Base
	belongs_to :blog, primary_key => 'user_id'
end
