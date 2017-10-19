class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
include DeviseWhitelist

#white listed
#ac what is being whitelisted bt the devise controller?



end
