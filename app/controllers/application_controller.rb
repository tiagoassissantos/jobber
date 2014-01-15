# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :add_admin_filter  
  
  private
  
  def add_admin_filter
    if (controller_name == 'registrations' && action_name == 'new')
      unless admin_signed_in?
        redirect_to new_admin_session_path
      end
    end
  end
  
  def after_sign_in_path_for(resource)
    destroy_user_session_path
  end
end
