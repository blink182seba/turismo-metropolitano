class ApplicationController < ActionController::Base
  check_authorization
  skip_authorization_check
  rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
       format.html { redirect_to root_url, alert: exception.message }
      end
  end
end
