class User < ActiveRecord::Base
	has_many :blogs, :primary_key => 'uid'
end
