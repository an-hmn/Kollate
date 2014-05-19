# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  brief      :text
#  deadline   :date
#  sidenotes  :text
#  client     :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Project < ActiveRecord::Base
	attr_accessible :title, :brief, :deadline, :client, :sidenotes, :colour_id, :user_id
    belongs_to :user
    has_many :images, through: :moodboards
    has_one :moodboard

    validates :title, presence: true
    
end
