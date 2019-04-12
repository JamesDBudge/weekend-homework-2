class Room

  attr_reader :capacity, :room_fee
  attr_accessor :playlist, :guests, :tab

  def initialize(capacity, playlist, room_fee, guests = [], tab = 0.00)
    @capacity = capacity
    @playlist = playlist
    @room_fee = room_fee
    @guests = guests
    @tab = tab
  end

  def add_song_to_playlist(new_song)
    @playlist.push(new_song)
  end

  def add_guest(guest)
    return if guest.cash < room_fee
    guest.cash -= @room_fee
    @tab += @room_fee
    return if guests.length == capacity
    @guests << guest
  end

  def remove_guest
    @guests.pop
  end





end


# && tab += room_fee
