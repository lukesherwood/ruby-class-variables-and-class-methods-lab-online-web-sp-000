class Song
  attr_accessor :name, :artist, :genre

@@genres = []
@@count = 0
@@artists = []
@@genre_counts = {}
@@artist_counts = {}

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
  @@genre_counts[@genre]||=0
   @@genre_counts[@genre] +=1
  end

def self.count
  @@count
  end
  
def self.genres
  @@genres.uniq
  end
  
def self.artists
  @@artists.uniq
  end
  
def self.genre_count
  @@genre_counts
  end
end