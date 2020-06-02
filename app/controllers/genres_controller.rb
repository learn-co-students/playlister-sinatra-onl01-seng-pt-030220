class GenresController < ApplicationController

  get '/genres' do
     @genres = Genre.all
     erb :'/genres/index'
   end

   get "/genres/:slug"  do
     @genre=Genre.all.select{ |genre| params[:slug] == genre.slug }.first
    erb :'genres/show'
   end

end
