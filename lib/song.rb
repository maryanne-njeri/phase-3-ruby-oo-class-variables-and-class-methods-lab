class Song
    attr_accessor :name , :artist , :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    #counts songs
    def self.count
        @@count
    end

    #returns genres
    def self.genres
        @@genres.uniq
    end

    #returns artists
    def self.artists
        @@artists.uniq
    end

    #genre count tally
    def self.genre_count
        @@genres.tally
    end

    #artist count tally
    def self.artist_count
        @@artists.tally
    end
end