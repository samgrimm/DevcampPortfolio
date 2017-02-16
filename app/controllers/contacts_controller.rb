class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :toggle_status]
  access all: [:new, :create], site_admin: :all
  layout "project", only: [:index, :show]
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_me_path, notice: "Your message has been sent"
    else
      render 'new'
    end
  end

  def toggle_status
    @contact.toggle_status
    redirect_to contacts_url, notice: 'Contact was successfully updated.'
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
