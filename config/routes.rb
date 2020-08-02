Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'download/:filename/:ext', to: 'upload#download'
  post 'upload', to: 'upload#upload'
end
