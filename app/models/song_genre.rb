class SongGenre < ActiveRecord::Base
    #many-to-many association
    belongs_to :song
    belongs_to :genre
end