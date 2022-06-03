class ApplicationController < ActionController::Base
    
  # Uncomment line 4 in this file and line 72 in UsersController if you want to force users to sign in before any other actions.
  # before_action(:force_user_sign_in)
  
  def home
    render({ :template => "user_facing_pages/homepage.html.erb" })
  end

  def find
    @trans_methods = ["Car", "Public Trans", "Bike", "Walk"]
    render({ :template => "user_facing_pages/find_sublet.html.erb" })
  end

  def initiate_sublet
    @visibility =  ["Private", "Fellow Students", "Work Colleagues", "Everyone"]
    @y_or_n = [true, false]
    @school_list = School.all.order(:name => :desc)
    render({ :template => "listings/initiate.html.erb" })
  end

  def user_sign_up
    render({ :template => "users/new.html.erb" })
  end
  

end
