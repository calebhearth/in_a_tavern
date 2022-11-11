InATavern::Engine.routes.draw do
  get ".well-known/webfinger", to: "webfinger#show", as: :webfinger
end
