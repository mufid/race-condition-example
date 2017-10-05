Rails.application.routes.draw do
  scope :top_up, controller: :top_up, as: :top_up do
    get :index, path: '/'
    post :execute
  end

  root 'root#root'
end
