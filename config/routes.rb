Rails.application.routes.draw do



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
