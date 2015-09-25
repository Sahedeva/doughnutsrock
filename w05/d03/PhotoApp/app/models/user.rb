class User < ActiveRecord::Base
	
	has_many :photos

	attr_accessor :password

	def authenticate(password)
		if BCrypt::Password.new(self.password_digest) == password
			true
		else
			false
		end
	end

	def hash_password
		if password.present?
			self.password_digest = BCrypt::Password.create(password)
		end
	end
end
