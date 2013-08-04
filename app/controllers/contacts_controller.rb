class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      render :confirm
    else
      render :new
    end
  end

  def done
    if request.post? then
      @contact = Contact.new(params[:contact])
      @contact.save
    else
      render :new
    end
  end
end
