require 'elasticsearch/model'

class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  acts_as_votable
  acts_as_taggable
  acts_as_followable

  validates :name, :description, presence: true

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  self.per_page = 10

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                              :default_url => "",
                              :storage => :s3,
                              :s3_credentials => Proc.new{ |a| a.instance.s3_credentials }

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => "dev-node", :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end

  def video_embed
    video.gsub("vimeo.com/","player.vimeo.com/video/")
  end

end

Project.import # for auto sync model with elastic search
