Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/new_photo_form", { :controller => "photos", :action => "new_form" })
  get("/create_photo", { :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/all_photos", { :controller => "photos", :action => "index" })
  get("/photo_details/:id", { :controller => "photos", :action => "show" })

  # Routes to UPDATE photos
  get("/edit_photo_form/:id", { :controller => "photos", :action => "edit_form" })
  get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

  # Routes to DELETE photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

end
