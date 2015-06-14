class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end
  def new 
    @contact = Contact.new
  end   
  def create
    coordinates = Geocoder.coordinates (params [:address])
    Contact.create({:first_name => params[:first_name], :last_name => params[:last_name], :middle_name => params[:middle_name], :phone_number => params[:phone_number], :address => params[:address], :email => params[:email], :bio => params[:bio]})
    flash[:success] = "contact added!"
  end  
  
  
  
  def show
    
    @contacts = Contact.find(params[:id])
  end
  def edit
    @contacts = Contact.find(params[:id])
  end 
  
  def update
  
    contacts = Contact.find(params[:id])
    contacts.update({:first_name => params[:first_name], :last_name => params[:last_name], :middle_name => params[:middle_name], :phone_number => params[:phone_number], :address => params[:address], :email => params[:email], :bio => params[:bio]})
  end


    
end
