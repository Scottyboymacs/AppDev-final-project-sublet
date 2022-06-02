class FirmLocationsController < ApplicationController
  def index
    matching_firm_locations = FirmLocation.all

    @list_of_firm_locations = matching_firm_locations.order({ :created_at => :desc })

    render({ :template => "firm_locations/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_firm_locations = FirmLocation.where({ :id => the_id })

    @the_firm_location = matching_firm_locations.at(0)

    render({ :template => "firm_locations/show.html.erb" })
  end

  def create
    the_firm_location = FirmLocation.new
    the_firm_location.firm_id = params.fetch("query_firm_id")
    the_firm_location.region_id = params.fetch("query_region_id")
    the_firm_location.state_id = params.fetch("query_state_id")
    the_firm_location.city_id = params.fetch("query_city_id")

    if the_firm_location.valid?
      the_firm_location.save
      redirect_to("/firm_locations", { :notice => "Firm location created successfully." })
    else
      redirect_to("/firm_locations", { :alert => the_firm_location.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_firm_location = FirmLocation.where({ :id => the_id }).at(0)

    the_firm_location.firm_id = params.fetch("query_firm_id")
    the_firm_location.region_id = params.fetch("query_region_id")
    the_firm_location.state_id = params.fetch("query_state_id")
    the_firm_location.city_id = params.fetch("query_city_id")

    if the_firm_location.valid?
      the_firm_location.save
      redirect_to("/firm_locations/#{the_firm_location.id}", { :notice => "Firm location updated successfully."} )
    else
      redirect_to("/firm_locations/#{the_firm_location.id}", { :alert => the_firm_location.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_firm_location = FirmLocation.where({ :id => the_id }).at(0)

    the_firm_location.destroy

    redirect_to("/firm_locations", { :notice => "Firm location deleted successfully."} )
  end
end
