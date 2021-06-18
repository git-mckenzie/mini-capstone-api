Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products", controller: "products", action: "index"

  # get "/display_product1", controller: "products", action: "display_product1"

  # get "/display_product2", controller: "products", action: "display_product2"

  get "/query_params" => "products#query_display_any"

  # get "/segment_params/:id" => "products#segment_display_any"

  get "/products/:id" => "products#show"

  post "/products" => "prodcuts#create"
end
