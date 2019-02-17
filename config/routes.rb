# Plugins routes

match "projects/:id/nauvs", to: "nauvs#index", via: :get

#match "projects/:id", to: "nauvs#create", via: :post