class SearchController < ApplicationController
	def index
    if params[:q].nil?
      @projects = []
    else
      @projects = Project.search params[:q]
    end
  end
end
