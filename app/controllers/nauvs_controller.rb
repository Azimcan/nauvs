class NauvsController < ApplicationController
	before_action :find_project, :authorize, only: :index

  def index
    puts "+++++++++++++++++++++++"
  	@issues = Issue.where(project_id: @project.id)
  end

  def create
  	print "++++++++++++++++++++++++"
  	sleep 10
  end

  private

  def find_project
		@project = Project.find(params[:id])
	end
end
