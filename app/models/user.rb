class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :fname, :lname, presence:true 
 	
   has_many :projects, dependent: :destroy
   has_many :donates, class_name: "Donate", foreign_key: "entrepreneur_id"
   has_many :receives, class_name: "Donate", foreign_key: "donor_id"
  
end
