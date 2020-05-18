Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/puzzles" => "puzzles#index"
    post "/puzzles" => "puzzles#create"
    get "/puzzles/:id" => "puzzles#show"
    patch "/puzzles/:id" => "puzzles#update"
    delete "/puzzles/:id" => "puzzles#destroy"

    get "/carted_puzzles" => "carted_puzzles#index"
    post "/carted_puzzles" => "carted_puzzles#create"
    delete "/carted_puzzles/:id" => "carted_puzzles#destroy"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    post "/puzzle_ratings" => "puzzle_ratings#create"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"

    post "/sessions" => "sessions#create"  

    post "/contacts" => "contacts#create"
  end

end
