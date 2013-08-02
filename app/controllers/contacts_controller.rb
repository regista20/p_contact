class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "Thank you for your message!"
      redirect_to root_path
    else
      render :new
    end
  end
end
