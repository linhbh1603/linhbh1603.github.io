class Banner < ActiveRecord::Base
	validates :url, presence: true
end
