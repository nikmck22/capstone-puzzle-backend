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

    post "/puzzle_ratings" => "puzzle_ratings#create"

    get "/users" => "users#index"
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"  

    post "/contacts" => "contacts#create"

    get "/carted_puzzles" => "carted_puzzles#index"
  end

end
