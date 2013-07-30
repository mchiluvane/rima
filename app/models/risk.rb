class Risk < ActiveRecord::Base
	has_many :type
	has_many :location
end
