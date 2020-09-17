require_relative "artist.rb"
require_relative "song.rb"


class Genre
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |each_song|
            each_song.genre == self
        end
    end

    def artists
        Song.all.map do |s|
            s.artist
        end
    end

end
