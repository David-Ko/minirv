class TrailersController < ApplicationController

def show
    @trailers = Trailer.find params[:id]
end

end
