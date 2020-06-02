class Artist < ActiveRecord::Base
has_many :songs
has_many :genres, through: :songs

def slug
  @artist_name=self.name.parameterize
end

def self.find_by_slug(slug)
   artist_name=slug.titleize
   Artist.find_by(name:artist_name)
end

def self.find_by_slug(slug)
   artist_name=slug.titleize
   Artist.find_by(name:artist_name)
end


end
