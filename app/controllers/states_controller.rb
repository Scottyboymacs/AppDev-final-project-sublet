class StatesController < ApplicationController
  def index
    matching_states = State.all

    @list_of_states = matching_states.order({ :created_at => :desc })

    render({ :template => "states/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_states = State.where({ :id => the_id })

    @the_state = matching_states.at(0)

    render({ :template => "states/show.html.erb" })
  end

  def create
    the_state = State.new
    the_state.name = params.fetch("query_name")
    the_state.region_id = params.fetch("query_region_id")

    if the_state.valid?
      the_state.save
      redirect_to("/states", { :notice => "State created successfully." })
    else
      redirect_to("/states", { :alert => the_state.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_state = State.where({ :id => the_id }).at(0)

    the_state.name = params.fetch("query_name")
    the_state.region_id = params.fetch("query_region_id")

    if the_state.valid?
      the_state.save
      redirect_to("/states/#{the_state.id}", { :notice => "State updated successfully."} )
    else
      redirect_to("/states/#{the_state.id}", { :alert => the_state.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_state = State.where({ :id => the_id }).at(0)

    the_state.destroy

    redirect_to("/states", { :notice => "State deleted successfully."} )
  end
end
