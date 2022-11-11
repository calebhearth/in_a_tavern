InATavern::Engine.routes.draw do
  get ".well-known/webfinger", to: "webfinger#show", as: :webfinger, defaults: { format: :json }
  get :actor, to: "actor#show", as: :actor, defaults: { format: :json }
  resource :inbox, only: [:create]
end
