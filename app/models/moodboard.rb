# == Schema Information
#
# Table name: moodboards
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  project_id :integer
#

class Moodboard < ActiveRecord::Base
    
    belongs_to :project
    has_many :images
end
