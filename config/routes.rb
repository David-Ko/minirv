Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get("/", to: "welcome#home")
get("/contact_us", to: "welcome#contact")

get("/trailers/:id", to: "trailers#show")
end
