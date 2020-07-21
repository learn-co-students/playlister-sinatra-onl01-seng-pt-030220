class Genre < ActiveRecord::Base
    has_many :song_genres #singular because there's one chart to access for the data

    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    
end