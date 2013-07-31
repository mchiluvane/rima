class Risk < ActiveRecord::Base
	has_many :type
	has_many :location
end

def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
end

class Risk
  self.per_page = 10
end
