class ApplicationController < ActionController::Base

  def home
    render({ :template => "user_facing_pages/homepage.html.erb" })
  end

  def find
    @trans_methods = ["Car", "Public Trans", "Bike", "Walk"]
    render({ :template => "user_facing_pages/find_sublet.html.erb" })
  end

  def initiate
    @visibility =  ["Private", "Fellow Students", "Work Colleagues", "Everyone"]
    @y_or_n = [true, false]
    @school_list = School.all.order(:name => :desc)
    render({ :template => "user_facing_pages/post_sublet.html.erb" })
  end
  

end
