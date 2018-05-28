class Room

  def initialize(number, capacity)
    @number = number
    @guests = []
    @playlist = []
    @capacity = capacity
  end

  def number
    return @number
  end

  def playlist
    return @playlist
  end

  def guests
    return @guests
  end

  def check_in(guest)
    if @guests.length < @capacity
    @guests << guest
  end
end

  def check_out(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @playlist << song
  end

  def capacity #getter
    return @capacity
  end

def fav_song(song_to_find)
  for song in @playlist
    if song == song_to_find
      return "Whoo"
    end
  end
  return "Not whoo"
end


end
