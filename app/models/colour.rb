# == Schema Information
#
# Table name: colours
#
#  id      :integer          not null, primary key
#  hexcode :string(255)
#

class Colour < ActiveRecord::Base
	attr_accessible :hexcode
	belongs_to :image
end
