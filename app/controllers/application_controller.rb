class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

#white listed
#ac what is being whitelisted bt the devise controller?

#show andrew this sessions vs session
  
#nul variable design pattern

end

#admin admin andrew_coleman@byu.net andrew47
#guest andrewaricoleman@gmail.com forgetme

#ac about page buttons are below the skill percentages

