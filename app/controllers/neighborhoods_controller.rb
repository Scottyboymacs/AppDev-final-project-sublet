class NeighborhoodsController < ApplicationController
  def index
    matching_neighborhoods = Neighborhood.all

    @list_of_neighborhoods = matching_neighborhoods.order({ :created_at => :desc })

    render({ :template => "neighborhoods/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_neighborhoods = Neighborhood.where({ :id => the_id })

    @the_neighborhood = matching_neighborhoods.at(0)

    render({ :template => "neighborhoods/show.html.erb" })
  end

  def create
    the_neighborhood = Neighborhood.new
    the_neighborhood.name = params.fetch("query_name")
    the_neighborhood.region_id = params.fetch("query_region_id")
    the_neighborhood.state_id = params.fetch("query_state_id")
    the_neighborhood.city_id = params.fetch("query_city_id")

    if the_neighborhood.valid?
      the_neighborhood.save
      redirect_to("/neighborhoods", { :notice => "Neighborhood created successfully." })
    else
      redirect_to("/neighborhoods", { :alert => the_neighborhood.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_neighborhood = Neighborhood.where({ :id => the_id }).at(0)

    the_neighborhood.name = params.fetch("query_name")
    the_neighborhood.region_id = params.fetch("query_region_id")
    the_neighborhood.state_id = params.fetch("query_state_id")
    the_neighborhood.city_id = params.fetch("query_city_id")

    if the_neighborhood.valid?
      the_neighborhood.save
      redirect_to("/neighborhoods/#{the_neighborhood.id}", { :notice => "Neighborhood updated successfully."} )
    else
      redirect_to("/neighborhoods/#{the_neighborhood.id}", { :alert => the_neighborhood.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_neighborhood = Neighborhood.where({ :id => the_id }).at(0)

    the_neighborhood.destroy

    redirect_to("/neighborhoods", { :notice => "Neighborhood deleted successfully."} )
  end
end
