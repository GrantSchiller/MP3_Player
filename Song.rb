class Song
  def initialize(c)
    debug 'SONG GOGO'
    @content = c
    @next_song = nil
  end
  def get_content
    return @content
  end
  def get_next_song
    return @next_song
  end
  def set_next_song(n)
    @next_song = n
  end
end
