class Player
  require './Song'
  def initialize
    debug 'PLAYER GOGO'
    @head = nil
    @tail = nil
    @length = 0
  end
  def add_song(new_song)
    if @tail != nil
      @tail.set_next_song(new_song)
    end
    @tail = new_song
    if @head == nil
      @head = @tail
    end
    @length += 1
  end
  def remove_song
    song = @head
    if song != nil
      @head = song.get_next_song
      song.set_next_song(nil)
      @length -= 1
    end
    return song;
  end
  def peek_next_song
    return @head
  end
  def get_length
    return @length
  end
end
