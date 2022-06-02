class UsersController < ApplicationController
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
    the_user.password_digest = params.fetch("query_password_digest")
    the_user.phone_num = params.fetch("query_phone_num")
    the_user.firm_id = params.fetch("query_firm_id")
    the_user.school_id = params.fetch("query_school_id")
    the_user.city_id = params.fetch("query_city_id")
    the_user.neighborhood_id = params.fetch("query_neighborhood_id")
    the_user.building_id = params.fetch("query_building_id")

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
    the_user.neighborhood_id = params.fetch("query_neighborhood_id")
    the_user.building_id = params.fetch("query_building_id")

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
end
