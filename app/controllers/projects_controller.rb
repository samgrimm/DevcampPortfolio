class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show]
  layout "project"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @projects = Project.by_position
  end

  def show
  end

  def new
    @project = Project.new
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

  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update(position: value[:position])
    end
    render nothing: true
  end



  private

  def project_params
    params.require(:project).permit(:title,
                                    :subtitle,
                                    :body,
                                    :main_image,
                                    :thumb_image,
                                    technologies_attributes: [:id, :name, :_destroy]
                                    )
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
