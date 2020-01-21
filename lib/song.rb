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
     @@genres.each do |genre|
     @@genre_counts[genre] ||= 1
     if @@genre_counts[genre] == genre
       @@genre_counts[genre] +=1
     end
     end
     @@genre_counts
end
end