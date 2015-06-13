class PagesController < ApplicationController
	def index
    @projects = Project.where.not(:video => "")
	end

end