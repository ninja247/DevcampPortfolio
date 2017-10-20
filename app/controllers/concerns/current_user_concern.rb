module CurrentUserConcern
  extend ActiveSupport::Concern

  #nul variable design pattern

  def current_user
    super ||  guest_user
  end

  def guest_user
    OpenStruct.new( name: "guest",
                    first_name:"guest",
                    last_name:"user",
                    email:"guest@user.com")
  end


end