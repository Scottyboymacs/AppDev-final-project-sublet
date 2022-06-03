class ListingsController < ApplicationController

  def own_listings
    matching_listings = Listing.all

    @list_of_listings = matching_listings.order({ :created_at => :desc })

    render({ :template => "listings/my_listings.html.erb" })
  end

  def bookmarked_listings
    matching_listings = Listing.all

    @list_of_listings = matching_listings.order({ :created_at => :desc })

    render({ :template => "listings/bookmarked_listings.html.erb" })
  end
  
  def search
    matching_listings = Listing.all

    @list_of_listings = matching_listings.order({ :created_at => :desc })

    render({ :template => "user_facing_pages/results.html.erb" })
  end
  
    def index
    matching_listings = Listing.all

    @list_of_listings = matching_listings.order({ :created_at => :desc })

    render({ :template => "listings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_listings = Listing.where({ :id => the_id })

    @the_listing = matching_listings.at(0)

    render({ :template => "listings/show.html.erb" })
  end

  def create
    the_listing = Listing.new
    the_listing.owner_id = params.fetch("query_owner_id")
    the_listing.name = params.fetch("query_listing_name")
    the_listing.open_date = params.fetch("query_open_date")
    the_listing.close_date = params.fetch("query_close_date")
    #the_listing.status = params.fetch("query_status", false)
    the_listing.address = params.fetch("query_address")
    #the_listing.num_beds = params.fetch("query_num_beds")
    #the_listing.num_baths = params.fetch("query_num_baths")
    #the_listing.num_rooms = params.fetch("query_num_rooms")
    #the_listing.num_beds_offered = params.fetch("query_num_beds_offered")
    #the_listing.num_baths_offered = params.fetch("query_num_baths")
    #the_listing.num_rooms_offered = params.fetch("query_num_rooms_offered")
    the_listing.region_id = Region.where(:id => params.fetch("query_region_id")).first.id
    the_listing.state_id = State.where(:id => params.fetch("query_state_id")).first.id
    the_listing.city_id = City.where(:id => params.fetch("query_city_id")).first.id
    #the_listing.neighborhood_id = params.fetch("query_neighborhood_id")
    #the_listing.building_id = params.fetch("query_building_id")
    #the_listing.furnished = params.fetch("query_furnished", false)
    #the_listing.ammenities = params.fetch("query_ammenities")
    #the_listing.pets = params.fetch("query_pets", false)
    #the_listing.smoking = params.fetch("query_smoking", false)
    #the_listing.listing_type = params.fetch("query_listing_type")
    the_listing.gender_pref = params.fetch("query_gender_pref")
    #the_listing.floor = params.fetch("query_floor")
    the_listing.rent = params.fetch("query_rent")
    #the_listing.dates_flex = params.fetch("query_dates_flex")
    #the_listing.start_flex_left = params.fetch("query_start_flex_left")
    #the_listing.start_flex_right = params.fetch("query_start_flex_right")
    #the_listing.end_flex_left = params.fetch("query_end_flex_left")
    #the_listing.end_flex_right = params.fetch("query_end_flex_right")
    #the_listing.notes = params.fetch("query_notes")
    #the_listing.map_url = params.fetch("query_map_url")
    #the_listing.website_url = params.fetch("query_website_url")
    #the_listing.satellite_url = params.fetch("query_satellite_url")
    #the_listing.num_watching = params.fetch("query_num_watching")
    the_listing.visibility = params.fetch("query_visibility")

    if the_listing.valid?
      the_listing.save
      redirect_to("/finalize_listing/#{the_listing.id}", { :notice => "Listing created successfully." })
    else
      redirect_to("/initiate_listing", { :alert => the_listing.errors.full_messages.to_sentence })
    end
  end

  def finalize_listing_form
    the_id = params.fetch("path_id")
    matching_listings = Listing.where({ :id => the_id })
    @the_listing = matching_listings.at(0) 
    
    render({ :template => "listings/finalize.html.erb" })
  end 

  def edit_form
    the_id = params.fetch("path_id")
    matching_listings = Listing.where({ :id => the_id })
    @the_listing = matching_listings.at(0)

    render({ :template => "listings/edit.html.erb" })  
  end

  def update
    the_id = params.fetch("path_id")
    the_listing = Listing.where({ :id => the_id }).at(0)

    the_listing.owner_id = params.fetch("query_owner_id")
    the_listing.open_date = params.fetch("query_open_date")
    the_listing.close_date = params.fetch("query_close_date")
    the_listing.status = params.fetch("query_status", false)
    the_listing.address = params.fetch("query_address")
    the_listing.num_beds = params.fetch("query_num_beds")
    the_listing.num_baths = params.fetch("query_num_baths")
    the_listing.num_rooms = params.fetch("query_num_rooms")
    #the_listing.num_beds_offered = params.fetch("query_num_beds_offered")
    #the_listing.num_baths_offered = params.fetch("query_num_baths")
    #the_listing.num_rooms_offered = params.fetch("query_num_rooms_offered")
    the_listing.region_id = Region.where(:name => params.fetch("query_region_name")).first.id
    the_listing.state_id = State.where(:name =>params.fetch("query_state_name")).first.id
    the_listing.city_id = City.where(:name =>params.fetch("query_city_name")).first.id
    #the_listing.neighborhood_id = Neighborhood.where(:name =>params.fetch("query_neighborhood_name")).first.id
    #the_listing.building_id = Building.where(:name =>params.fetch("query_building_name")).first.id
    the_listing.furnished = params.fetch("query_furnished", false)
    the_listing.ammenities = params.fetch("query_ammenities")
    the_listing.pets = params.fetch("query_pets", false)
    the_listing.smoking = params.fetch("query_smoking", false)
    the_listing.listing_type = params.fetch("query_listing_type")
    the_listing.gender_pref = params.fetch("query_gender_pref")
    the_listing.floor = params.fetch("query_floor")
    the_listing.rent = params.fetch("query_rent")
    the_listing.dates_flex = params.fetch("query_dates_flex")
    #the_listing.start_flex_left = params.fetch("query_start_flex_left")
    #the_listing.start_flex_right = params.fetch("query_start_flex_right")
    #the_listing.end_flex_left = params.fetch("query_end_flex_left")
    #the_listing.end_flex_right = params.fetch("query_end_flex_right")
    the_listing.notes = params.fetch("query_notes")
    #the_listing.map_url = params.fetch("query_map_url")
    the_listing.website_url = params.fetch("query_website_url")
    #the_listing.satellite_url = params.fetch("query_satellite_url")
    #the_listing.num_watching = params.fetch("query_num_watching")
    the_listing.visibility = params.fetch("query_visibility")

    if the_listing.valid?
      the_listing.save
      redirect_to("/listings/#{the_listing.id}", { :notice => "Listing updated successfully."} )
    else
      redirect_to("/listings/#{the_listing.id}", { :alert => the_listing.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_listing = Listing.where({ :id => the_id }).at(0)

    the_listing.destroy

    redirect_to("/listings", { :notice => "Listing deleted successfully."} )
  end
end
