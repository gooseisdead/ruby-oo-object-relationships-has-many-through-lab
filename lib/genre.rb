class Genre
     @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.find_all { |charttopper| charttopper.genre == self}
    end

    def artists
        genre_songs = songs()
        genre_songs.map { |charttopper| charttopper.artist }
    end
end 