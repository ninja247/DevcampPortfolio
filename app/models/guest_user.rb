class GuestUser < User
  attr_accessor :name, :first_name, :email


  def guest_user
      super ||  guest_user
  end

def guest_user
  guest = GuestUser.new
  guest.first_name = "Guest"
  guest.last_name = "User"
  guest.email = "guest@example.com"
  
end





end
