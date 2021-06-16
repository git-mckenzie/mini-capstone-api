Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/display_all_products", controller: "products", action: "display_all"

  get "/display_product1", controller: "products", action: "display_product1"

  get "/display_product2", controller: "products", action: "display_product2"
end
