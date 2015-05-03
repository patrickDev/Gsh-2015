class Project < ActiveRecord::Base
	 has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :region, :country, :organization_name, :leader_name, :organization_type, :address, :organization_id, :description, :impact_people ,
  :technical_assistance, :amount, :raised, presence:true
  validates :amount, numericality: { greater_than: 0 }
  validates_attachment_presence :image

  belongs_to :user
  has_many :donates
  belongs_to :pimo
end




 