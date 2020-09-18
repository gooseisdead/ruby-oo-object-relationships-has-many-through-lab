class Artist
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.find_all { |charttopper| charttopper.artist == self }
    end

    def genres
        artist_songs = songs()
        artist_songs.map { |charttopper| charttopper.genre }
    end

end 