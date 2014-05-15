# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  image      :text
#  title      :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Image < ActiveRecord::Base
	attr_accessible :image, :title, :notes

	validates :image, presence: true
	validates :title, presence: true
	validates :user_id, presence: true
	
	has_many :colours
	has_many :tags
	belongs_to :projects
	belongs_to :user
end
