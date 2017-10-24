module ApplicationHelper
  def sample_helper
    "<p>my helper </p>".html_safe
  end

    
  def login_helper
    if current_user.is_a?(User)
        link_to "Logout", destroy_user_session_path, method: :delete
      else
        (link_to "Register", new_user_registration_path) +
        "<br>".html_safe +
        (link_to "Login", new_user_session_path)
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

end
