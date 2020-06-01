class SongsController < ApplicationController

get '/songs' do
   @songs = Song.all
   erb :'/songs/index'
 end

 get "/songs/new"  do
  erb :'songs/new'
 end

  get "/songs/:slug"  do
    @song=Song.all.select{ |song| params[:slug] == song.slug }.first
    erb :'songs/show'
   end

 post "/songs" do
   @song=Song.create(name:params[:Name])
   @song.artist=Artist.find_or_create_by(name:params["Artist Name"])
   @song.genre_ids = params[:genre]
   @song.save
   #binding.pry
   "Successfully created song."
  redirect to "/songs/#{@song.slug}"
 end


 get "/songs/:slug/edit"  do
   @song=Song.all.select{ |song| params[:slug] == song.slug }.first
   erb :'songs/edit'
 end

 patch "/songs/:slug"  do
 #@song1=Song.find(params[params[:slug])
  @song=Song.all.select{ |song| params[:slug] == song.slug }.first
  @song.artist=Artist.update(name:params["Artist Name"])
  @song.genre_ids = params[:genre]
  #binding.pry
  redirect "songs/#{@song.slug}"
 end

end
