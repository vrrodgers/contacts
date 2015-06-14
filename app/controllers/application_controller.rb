class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def friendly_updated_at
    updated_at.strftime("%B %d, %Y")
  end


end
