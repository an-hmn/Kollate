class Moodboard < ActiveRecord::Base
	attr_accessible :project_id
    
    belongs_to :project
    has_many :images
end
