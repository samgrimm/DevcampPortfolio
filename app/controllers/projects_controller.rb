class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
    3.times { @project.technologies.build }
  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Project is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project has been updated.' }
      else
        format.html { render :new }

      end
    end
  end


  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully removed.' }
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :subtitle, :body,:main_image, :thumb_image, technologies_attributes: [:name] )
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
