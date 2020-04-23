Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/puzzles" => "puzzles#index"
    post "/puzzles" => "puzzles#create"
    get "/puzzles/:id" => "puzzles#show"
  end

end
