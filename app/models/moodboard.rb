class Moodboard < ActiveRecord::Base
<<<<<<< HEAD
=======
	attr_accessible :project_id
    
    belongs_to :project
    has_many :images
>>>>>>> c27ed90d4745e0c2d1db82c5add0bb84192ab8b4
end
