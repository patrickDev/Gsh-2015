class Pimo < ActiveRecord::Base
	validates :area, presence:true

	 belongs_to :user
     has_many :projects
end
