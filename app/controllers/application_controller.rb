class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource

#white listed
#ac what is being whitelisted bt the devise controller?

#show andrew this sessions vs session
  


end
