class ApplicationController < ActionController::Base
  include AuthenticatedSystem  
  before_filter :check_user
  protect_from_forgery
  private
def check_user
@current_user= current_user
end

end
