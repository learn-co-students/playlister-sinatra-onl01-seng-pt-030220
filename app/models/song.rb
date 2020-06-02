class Song < ActiveRecord::Base

belongs_to :artist
has_many :song_genres
has_many :genres, through: :song_genres


def  slug
  @song_name=self.name.parameterize
end

def self.find_by_slug(slug)
   #song_name=slug.split("-").map(&:capitalize).join(" ")
   first_word="%#{slug.capitalize.split("-")[0]}%"
   #bb=Song.find_by(name:song_name)
   self.where("name LIKE ?",first_word).first
  # song_name=slug.split("-").join(" ")
   #song_name=slug.titleize
   #Song.find_by(name: song_name)
end


end
