class User < ActiveRecord::Base
	has_one :profile
	has_many :projects

	class << self
		def from_omniauth(auth_hash)
	    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
	    user.nickname = auth_hash['info']['nickname']
	    user.email = auth_hash['info']['email']
	    user.save!
	    user
	  end
	end
end
