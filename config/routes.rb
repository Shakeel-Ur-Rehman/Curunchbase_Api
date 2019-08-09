Rails.application.routes.draw do
  root "organizations#index"
  post "organizations/top50Investors",to:"organizations#top50Investors"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
