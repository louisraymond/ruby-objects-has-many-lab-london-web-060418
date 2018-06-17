class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
      song = Song.new(song_name)
      @songs << song
      song.artist = self
  end

  def self.song_count
    count = 0
    @@all.each do |artist|
      count += artist.songs.length
    end
    count
    end

end