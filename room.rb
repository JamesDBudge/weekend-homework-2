class Room

  attr_reader :capacity, :room_fee
  attr_accessor :playlist

  def initialize(capacity, playlist, room_fee)
    @capacity = capacity
    @playlist = playlist
    @room_fee = room_fee
  end

  def add_song_to_playlist(new_song)
    @playlist.push(new_song)
  end








end
