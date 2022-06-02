class ApplicationController < ActionController::Base

  def home
    render({ :template => "user_facing_pages/homepage.html.erb" })
  end

  def find
    render({ :template => "user_facing_pages/find_sublet.html.erb" })
  end

  def post
    render({ :template => "user_facing_pages/post_sublet.html.erb" })
  end
  

end
