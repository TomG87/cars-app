Rails.application.routes.draw do
get "/cars/:id" => "cars#show"
get "/cars" => "cars#index"
post "/cars" => "cars#create"
end
