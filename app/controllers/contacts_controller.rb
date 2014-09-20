class ContactsController < ActionController::Base
  
  def create
    Contact.create(contact_params)
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :title, :content, :email)
  end
end