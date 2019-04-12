class Room

  attr_reader :capacity, :room_fee
  attr_accessor :playlist, :guests

  def initialize(capacity, playlist, room_fee, guests = [])
    @capacity = capacity
    @playlist = playlist
    @room_fee = room_fee
    @guests = guests
  end

  def add_song_to_playlist(new_song)
    @playlist.push(new_song)
  end

  def add_guest(guest)
    guest.cash -= @room_fee
    @guests << guest if @guests.length < capacity
  end

  def remove_guest
    @guests.pop
  end






end
