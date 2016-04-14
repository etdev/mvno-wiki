Rails.application.routes.draw do
  root "homes#show"
  post "search_plans", to: "plans#search"
end
