# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  brief      :text
#  deadline   :date
#  client     :string(255)
#  sidenotes  :text
#  created_at :datetime
#  updated_at :datetime
#

class Project < ActiveRecord::Base
	attr_accessible :title, :brief, :deadline, :client, :sidenotes, :colour_id, :user_id
    belongs_to :user
    has_many :images, through: :moodboards

    validates :title, presence: true
    
end
