# == Schema Information
#
# Table name: images
#
#  id           :integer          not null, primary key
#  image        :text
#  title        :string(255)
#  notes        :text
#  created_at   :datetime
#  updated_at   :datetime
#  user_id      :integer
#  source       :string(255)
#  moodboard_id :integer
#

class Image < ActiveRecord::Base
	attr_accessible :image, :title, :notes, :source, :user_id, :remote_source_url

	has_many :colours
	has_many :tags
	belongs_to :projects
	belongs_to :user

	
	validates :title, presence: true
	validates :user_id, presence: true

	mount_uploader :source, SourceUploader
end
