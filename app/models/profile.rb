class Profile < ActiveRecord::Base
  belongs_to :user

  class << self
		def from_omniauth(auth_hash)
	    profile = Profile.new
	    profile.name = auth_hash['info']['name']
	    profile.image = auth_hash['info']['image']
	    profile.github = auth_hash['info']['urls']['GitHub']
	    profile.website = auth_hash['info']['urls']['Blog']
	    profile.save!
	    profile
	  end
	end

end
