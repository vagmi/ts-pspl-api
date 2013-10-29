TsApi::Application.routes.draw do
  resources :clients do
    resources :projects
  end
  resources :projects, :only=>[] do
    resources :time_entries
  end
  resources :time_entries, :only=>[:index,:create]
end
