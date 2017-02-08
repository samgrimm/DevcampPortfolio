class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Project is now live.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project has been updated.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :subtitle, :body,:main_image, :thumb_image )
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
