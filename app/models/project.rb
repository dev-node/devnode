require 'elasticsearch/model'

class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  acts_as_votable
  acts_as_taggable
  acts_as_followable
  
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

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

Project.import # for auto sync model with elastic search
