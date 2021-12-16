require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        @@all << self
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
    genre_count = {}
    @@genres.each do |g|
        if genre_count[g]
            genre_count[g] += 1
        else 
            genre_count[g] = 1
        end
    end
    genre_count
end


def self.artist_count
    artist_count = {}
    @@artists.each do |g|
        if artist_count[g]
            artist_count[g] += 1
        else 
            artist_count[g] = 1
        end
    end
    artist_count
end

def self.all
    @@all
end

def self.print_all_song_names
    self.all.each do |song|
      puts song.name
    end
  end

end

s1 = Song.new("99 Problems", "Jay-Z", "rap")
s2 = Song.new("hello", "Ben", "rock")
s3 = Song.new("goodbye", "Ben", "country")
s3 = Song.new("goodbye", "Ben", "country")

binding.pry