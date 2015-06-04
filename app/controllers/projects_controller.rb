class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def show
	end

	def edit
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user_id = current_user.id
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

	private

		def set_project
			@project = Project.find(params[:id])
		end

		def project_params
			params.require(:project).permit(:name, :description, :video, :repo)
		end
end
