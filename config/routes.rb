Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "index", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :new_task
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update_task
  delete "tasks/:id", to: "tasks#destroy", as: :destroy_task
  #le check ne marche pas
  patch "tasks/:id", to: "tasks#check", as: :check_task
end
