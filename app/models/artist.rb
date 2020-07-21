class Artist < ActiveRecord::Base

    
    #THING ABOUT THIS LOGICALLY - don't be intimidated
    has_many :songs
    has_many :genres, through: :songs
end