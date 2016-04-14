Rails.application.routes.draw do
  root "homes#show"
  post :plan_search, to: "plan_searches#index"
end
