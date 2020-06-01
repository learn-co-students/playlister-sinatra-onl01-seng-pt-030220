class Artist < ActiveRecord::Base
has_many :songs
has_many :genres, through: :songs

def slug
  @gartist_name=self.name.parameterize
end

end
