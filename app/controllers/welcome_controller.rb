class WelcomeController < ApplicationController

def home
    @trailers = Trailer.all.order(id: :desc)
end

def contact
end

end
