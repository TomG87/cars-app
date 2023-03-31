Rails.application.routes.draw do
get "/cars/:id" => "cars#show"
get "/cars" => "cars#index"
end
