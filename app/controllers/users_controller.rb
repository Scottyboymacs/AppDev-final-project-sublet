class UsersController < ApplicationController
  
  def sign_in_form
    render({ :template => "users/sign_in.html.erb" })
  end

  def sign_up_form
    render({ :template => "users/new.html.erb" })
  end
    
  def edit_profile_form
    render({ :template => "users/edit_profile.html.erb" })
  end

  def create_cookie
    user = User.where({ :email => params.fetch("query_email") }).first
    
    the_supplied_password = params.fetch("query_password")
    
    if user != nil
      are_they_legit = user.authenticate(the_supplied_password)
    
      if are_they_legit == false
        redirect_to("/user_sign_in", { :alert => "Incorrect password." })
      else
        session.store(:user_id, user.id)
      
        redirect_to("/", { :notice => "Signed in successfully." })
      end
    else
      redirect_to("/user_sign_in", { :alert => "No user with that email address." })
    end
  end

  def destroy_cookies
    reset_session

    redirect_to("/", { :notice => "Signed out successfully." })
  end
  
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_users = User.where({ :id => the_id })

    @the_user = matching_users.at(0)

    render({ :template => "users/show.html.erb" })
  end

  def create
    the_user = User.new
    the_user.username = params.fetch("query_username")
    the_user.email = params.fetch("query_email")
    the_user.password = params.fetch("query_password")
    the_user.password_confirmation = params.fetch("query_password_confirmation")
    the_user.phone_num = params.fetch("query_phone_num")
    the_user.firm_id = Firm.where(:name => params.fetch("query_firm_name")).first.id
    the_user.school_id = School.where(:name => params.fetch("query_school_name")).first.id
    #the_user.city_id = City.where(:name => params.fetch("query_city_name")).first.id
    #the_user.neighborhood_id = params.fetch("query_neighborhood_id")
    #the_user.building_id = params.fetch("query_building_id")

    if the_user.valid?
      the_user.save
      redirect_to("/users", { :notice => "User created successfully." })
    else
      redirect_to("/users", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.username = params.fetch("query_username")
    the_user.email = params.fetch("query_email")
    the_user.password_digest = params.fetch("query_password_digest")
    the_user.phone_num = params.fetch("query_phone_num")
    the_user.firm_id = params.fetch("query_firm_id")
    the_user.school_id = params.fetch("query_school_id")
    the_user.city_id = params.fetch("query_city_id")
    #the_user.neighborhood_id = params.fetch("query_neighborhood_id")
    #the_user.building_id = params.fetch("query_building_id")

    if the_user.valid?
      the_user.save
      redirect_to("/users/#{the_user.id}", { :notice => "User updated successfully."} )
    else
      redirect_to("/users/#{the_user.id}", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.destroy

    redirect_to("/users", { :notice => "User deleted successfully."} )
  end

      # Uncomment line 72 here and line 4 in ApplicationController if you want to force users to sign in before any other actions.
  # skip_before_action(:force_user_sign_in, { :only => [:sign_up_form, :create, :sign_in_form, :create_cookie] })

 end
