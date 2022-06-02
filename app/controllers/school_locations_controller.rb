class SchoolLocationsController < ApplicationController
  def index
    matching_school_locations = SchoolLocation.all

    @list_of_school_locations = matching_school_locations.order({ :created_at => :desc })

    render({ :template => "school_locations/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_school_locations = SchoolLocation.where({ :id => the_id })

    @the_school_location = matching_school_locations.at(0)

    render({ :template => "school_locations/show.html.erb" })
  end

  def create
    the_school_location = SchoolLocation.new
    the_school_location.school_id = params.fetch("query_school_id")
    the_school_location.region_id = params.fetch("query_region_id")
    the_school_location.state_id = params.fetch("query_state_id")
    the_school_location.city_id = params.fetch("query_city_id")

    if the_school_location.valid?
      the_school_location.save
      redirect_to("/school_locations", { :notice => "School location created successfully." })
    else
      redirect_to("/school_locations", { :alert => the_school_location.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_school_location = SchoolLocation.where({ :id => the_id }).at(0)

    the_school_location.school_id = params.fetch("query_school_id")
    the_school_location.region_id = params.fetch("query_region_id")
    the_school_location.state_id = params.fetch("query_state_id")
    the_school_location.city_id = params.fetch("query_city_id")

    if the_school_location.valid?
      the_school_location.save
      redirect_to("/school_locations/#{the_school_location.id}", { :notice => "School location updated successfully."} )
    else
      redirect_to("/school_locations/#{the_school_location.id}", { :alert => the_school_location.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_school_location = SchoolLocation.where({ :id => the_id }).at(0)

    the_school_location.destroy

    redirect_to("/school_locations", { :notice => "School location deleted successfully."} )
  end
end
