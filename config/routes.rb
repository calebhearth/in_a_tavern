InATavern::Engine.routes.draw do
  get ".well-known/webfinger", to: "webfinger#show", as: :webfinger, defaults: { format: :json }
end
