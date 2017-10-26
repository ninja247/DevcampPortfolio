module ApplicationHelper


  def login_helper style
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) + " ".html_safe + (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end


    #application helper vs partial
    #when you have a lot of logic use a helper when you pass in data use a partial  

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} page"
      content_tag(:p, greeting, class: "source_greeting") 
    end  
  end

# to comment cmnd forward slash

  def copyright_generator
    DevcampViewTool247::Renderer.copyright 'Andrew Coleman', 'All rights reserved'
  end

  def sample_helper
    "<p>my helper </p>".html_safe
  end

end
