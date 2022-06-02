Rails.application.routes.draw do



  # Routes for the Region resource:

  # CREATE
  post("/insert_region", { :controller => "regions", :action => "create" })
          
  # READ
  get("/regions", { :controller => "regions", :action => "index" })
  
  get("/regions/:path_id", { :controller => "regions", :action => "show" })
  
  # UPDATE
  
  post("/modify_region/:path_id", { :controller => "regions", :action => "update" })
  
  # DELETE
  get("/delete_region/:path_id", { :controller => "regions", :action => "destroy" })

  #------------------------------

  # Routes for the State resource:

  # CREATE
  post("/insert_state", { :controller => "states", :action => "create" })
          
  # READ
  get("/states", { :controller => "states", :action => "index" })
  
  get("/states/:path_id", { :controller => "states", :action => "show" })
  
  # UPDATE
  
  post("/modify_state/:path_id", { :controller => "states", :action => "update" })
  
  # DELETE
  get("/delete_state/:path_id", { :controller => "states", :action => "destroy" })

  #------------------------------

  # Routes for the City resource:

  # CREATE
  post("/insert_city", { :controller => "cities", :action => "create" })
          
  # READ
  get("/cities", { :controller => "cities", :action => "index" })
  
  get("/cities/:path_id", { :controller => "cities", :action => "show" })
  
  # UPDATE
  
  post("/modify_city/:path_id", { :controller => "cities", :action => "update" })
  
  # DELETE
  get("/delete_city/:path_id", { :controller => "cities", :action => "destroy" })

  #------------------------------

  # Routes for the Neighborhood resource:

  # CREATE
  post("/insert_neighborhood", { :controller => "neighborhoods", :action => "create" })
          
  # READ
  get("/neighborhoods", { :controller => "neighborhoods", :action => "index" })
  
  get("/neighborhoods/:path_id", { :controller => "neighborhoods", :action => "show" })
  
  # UPDATE
  
  post("/modify_neighborhood/:path_id", { :controller => "neighborhoods", :action => "update" })
  
  # DELETE
  get("/delete_neighborhood/:path_id", { :controller => "neighborhoods", :action => "destroy" })

  #------------------------------

  # Routes for the Building resource:

  # CREATE
  post("/insert_building", { :controller => "buildings", :action => "create" })
          
  # READ
  get("/buildings", { :controller => "buildings", :action => "index" })
  
  get("/buildings/:path_id", { :controller => "buildings", :action => "show" })
  
  # UPDATE
  
  post("/modify_building/:path_id", { :controller => "buildings", :action => "update" })
  
  # DELETE
  get("/delete_building/:path_id", { :controller => "buildings", :action => "destroy" })

  #------------------------------

  # Routes for the Firm location resource:

  # CREATE
  post("/insert_firm_location", { :controller => "firm_locations", :action => "create" })
          
  # READ
  get("/firm_locations", { :controller => "firm_locations", :action => "index" })
  
  get("/firm_locations/:path_id", { :controller => "firm_locations", :action => "show" })
  
  # UPDATE
  
  post("/modify_firm_location/:path_id", { :controller => "firm_locations", :action => "update" })
  
  # DELETE
  get("/delete_firm_location/:path_id", { :controller => "firm_locations", :action => "destroy" })

  #------------------------------

  # Routes for the School location resource:

  # CREATE
  post("/insert_school_location", { :controller => "school_locations", :action => "create" })
          
  # READ
  get("/school_locations", { :controller => "school_locations", :action => "index" })
  
  get("/school_locations/:path_id", { :controller => "school_locations", :action => "show" })
  
  # UPDATE
  
  post("/modify_school_location/:path_id", { :controller => "school_locations", :action => "update" })
  
  # DELETE
  get("/delete_school_location/:path_id", { :controller => "school_locations", :action => "destroy" })

  #------------------------------

  # Routes for the School resource:

  # CREATE
  post("/insert_school", { :controller => "schools", :action => "create" })
          
  # READ
  get("/schools", { :controller => "schools", :action => "index" })
  
  get("/schools/:path_id", { :controller => "schools", :action => "show" })
  
  # UPDATE
  
  post("/modify_school/:path_id", { :controller => "schools", :action => "update" })
  
  # DELETE
  get("/delete_school/:path_id", { :controller => "schools", :action => "destroy" })

  #------------------------------

  # Routes for the Firm resource:

  # CREATE
  post("/insert_firm", { :controller => "firms", :action => "create" })
          
  # READ
  get("/firms", { :controller => "firms", :action => "index" })
  
  get("/firms/:path_id", { :controller => "firms", :action => "show" })
  
  # UPDATE
  
  post("/modify_firm/:path_id", { :controller => "firms", :action => "update" })
  
  # DELETE
  get("/delete_firm/:path_id", { :controller => "firms", :action => "destroy" })

  #------------------------------

  # Routes for the Bookmark resource:

  # CREATE
  post("/insert_bookmark", { :controller => "bookmarks", :action => "create" })
          
  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  
  get("/bookmarks/:path_id", { :controller => "bookmarks", :action => "show" })
  
  # UPDATE
  
  post("/modify_bookmark/:path_id", { :controller => "bookmarks", :action => "update" })
  
  # DELETE
  get("/delete_bookmark/:path_id", { :controller => "bookmarks", :action => "destroy" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  post("/insert_photo", { :controller => "photos", :action => "create" })
          
  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  
  # UPDATE
  
  post("/modify_photo/:path_id", { :controller => "photos", :action => "update" })
  
  # DELETE
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  post("/insert_user", { :controller => "users", :action => "create" })
          
  # READ
  get("/users", { :controller => "users", :action => "index" })
  
  get("/users/:path_id", { :controller => "users", :action => "show" })
  
  # UPDATE
  
  post("/modify_user/:path_id", { :controller => "users", :action => "update" })
  
  # DELETE
  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

  # Routes for the Listing resource:

  # CREATE
  post("/insert_listing", { :controller => "listings", :action => "create" })
          
  # READ
  get("/listings", { :controller => "listings", :action => "index" })
  
  get("/listings/:path_id", { :controller => "listings", :action => "show" })
  
  # UPDATE
  
  post("/modify_listing/:path_id", { :controller => "listings", :action => "update" })
  
  # DELETE
  get("/delete_listing/:path_id", { :controller => "listings", :action => "destroy" })

  #------------------------------

end
