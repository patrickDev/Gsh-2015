class Donate < ActiveRecord::Base
	validates :address, :city, :state, presence: true

	belongs_to :project
	belongs_to :donor, class_name: "User"
	belongs_to :entrepreneur,class_name: "User"
end
