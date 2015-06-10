class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy, :downvote, :upvote, :follow]
	before_action :check_current_user, only: [:edit, :update, :destroy]

	def index
		if !params[:q].nil?
      @projects = Project.search params[:q]
      redirect_to :controller => 'search', :q => params[:q]
		elsif params[:tag]
			@projects = Project.tagged_with(params[:tag])
		else
			@projects = Project.order(:cached_votes_total => :desc).paginate(:page => params[:page])
		end
		
	end

	def featured
		@projects = Project.where.not(:video => "")
	end

	def show
		@comment = Comment.new
	end

	def edit
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user_id = current_user.id
		json = HTTParty.get("https://vimeo.com/api/oembed.json?url=#{@project.video}")
		video_hash = JSON.parse(json.body)
  	@project.video_thumb = video_hash['thumbnail_url']
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def update
		respond_to do |format|
			if @project.update(project_params)
				format.html { redirect_to @project, notice: 'Project was successfully updated.' }
				format.json { render :show, status: :ok, location: @project }
			else
				format.html { render :edit }
				format.json { render json: @project.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@project.destroy
		respond_to do |format|
			format.html { redirect_to root_path, notice: 'Project was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	def upvote
		@project.upvote_by current_user
		redirect_to :back
	end

	def downvote
		@project.downvote_by current_user
		redirect_to :back
	end

	def follow
    @project = Project.find(params[:id])
    current_user.follow(@project)
    redirect_to :back
	end

  def unfollow
    @project = Project.find(params[:id])
    current_user.stop_following(@project)
    redirect_to :back
  end

	private
		def check_current_user
			unless current_user && @project.user_id == current_user.id
				flash[:warning] = "You have to be logged in as that user to do that!"
				redirect_to root_path
			end
		end

		def set_project
			@project = Project.find(params[:id])
		end

		def project_params
			params.require(:project).permit(:name, :description, :video, :repo, :tag_list, :fulldescription, :languages, :q)
		end
end
