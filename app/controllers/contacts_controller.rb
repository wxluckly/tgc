class ContactsController < ActionController::Base
  
  def create
    contact = Contact.create(contact_params)
    MailerSystem.user_contact_notify(contact.id).deliver
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :title, :content, :email)
  end
end