Rails.application.routes.draw do
  get "/", to: 'tasks#show' 
  get "/tasks", to: 'tasks#show' 
  post "/tasks", to: 'tasks#create'
  patch "/tasks/:id", to: 'tasks#update'
  delete "/tasks/:id", to: 'tasks#delete'
end
