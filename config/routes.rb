Rails.application.routes.draw do
get "/cars/:id" => "cars#show"
get "/cars" => "cars#index"
post "/cars" => "cars#create"
patch "/cars/:id" => "cars#update"
delete "/cars/:id" => "cars#destroy"
end
