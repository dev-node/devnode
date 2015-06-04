class Project < ActiveRecord::Base
  belongs_to :user
  
  # #Set video url to include http:// if not included
  # def set_video_url
  #   url = @project.video
  #   @project.video = full_url
  # end
  
  # #Check for full url
  # def full_url
  #   if url.match("http://") || url.match("http://")
  #     url = "http://"+url
  #   else
  #     url
  #  end
  #end
end
