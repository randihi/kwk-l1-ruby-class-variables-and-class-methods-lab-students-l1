class Song
  attr_accessor :name, :artist, :genre #getter methods

  @@count = 0 
  @@artists = [] #array
  @@genres = [] #array

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre #adds genre to genre array
    @@artists << artist #adds artist t artist array
  end

  def self.count #Class method
    @@count
  end

  def self.artists #Class method
    @@artists.uniq
  end

  def self.artist_count #Class method
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres #Class method
    @@genres.uniq
  end

  def self.genre_count #Class method
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
