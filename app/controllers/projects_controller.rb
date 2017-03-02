class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show]
  layout "project"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @projects = Project.by_position(params[:locale])
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
        format.html { redirect_to projects_path(locale: I18n.locale), notice: t('.live') }
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
        format.html { redirect_to projects_path(locale: I18n.locale), notice: t('.updated')}
      else
        format.html { render :new }

      end
    end
  end


  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url(locale: I18n.locale), notice: t('.removed') }
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
                                    :language,
                                    technologies_attributes: [:id, :name, :_destroy],
                                    links_attributes: [:id, :name, :url, :icon, :_destroy]
                                    )
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
