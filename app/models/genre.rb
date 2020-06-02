class Genre < ActiveRecord::Base
has_many :song_genres
has_many :songs, through: :song_genres
has_many :artists, through: :songs


def slug
  @genre_name=self.name.parameterize
end

def self.find_by_slug(slug)
    genre_name=slug.titleize
    Genre.find_by(name:genre_name)
end

end
