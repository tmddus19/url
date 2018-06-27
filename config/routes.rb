Rails.application.routes.draw do
  get 'links' => 'links#index'
  get 'links/new' => 'links#new'
  post 'links' => 'links#create'
  delete 'links/:id' => 'links#destroy'
  
  get ':short' => 'links#goto'

end
