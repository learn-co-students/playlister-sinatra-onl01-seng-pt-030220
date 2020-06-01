class Genre < ActiveRecord::Base
has_many :song_genres
has_many :songs, through: :song_genres
has_many :artists, through: :songs


def  slug
  @genre_name=self.name.parameterize
end

end
