class User < ActiveRecord::Base
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	
  	has_many :statuses

  	validates :first_name, presence: true
  	validates :last_name, presence: true
  	validates :profile_name, presence: true,
  						 	uniqueness: { case_sensitive: false }, 
  						 	format: {
  						 		with: /\A[a-zA-Z0-9]+\z/,
  						 		message: 'Must be formatted correctly.'
  						 	}


	def full_name
		first_name + " " + last_name
	end	
end
