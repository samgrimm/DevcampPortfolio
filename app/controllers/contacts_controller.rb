class ContactsController < ApplicationController
  access all: [:new, :create], site_admin: :all
  layout "project", only: [:index]
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path, notice: "Your message has been sent"
    else
      render 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end
end
