class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres #review relationship
    has_many :genres, through: :song_genres #need review on relationship
end