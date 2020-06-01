class ArtistsController < ApplicationController

    get '/artists' do
       @artists = Artist.all
       erb :'/artists/index'
     end

     get "/artists/:slug"  do
      @artist=Artist.all.select{ |artist| params["slug"] == artist.slug }.first
    # binding.pry
      erb :'artists/show'
     end

end
