Rails.application.routes.draw do
  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Show
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "task/:id", to: "tasks#update"

  # Delete
  delete "tasks/:id", to: "tasks#destroy"
end
