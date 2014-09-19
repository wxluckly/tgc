class Admin::ContactsController < Admin::BaseController
  def index
    @contacts = Contact.order("id desc").page(params[:page])
  end

  def show
    @contact = Contact.find(params[:id])
  end
end