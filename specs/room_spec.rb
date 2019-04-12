require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../song.rb')

class RoomTest < Minitest::Test

  def setup
    @song1 = Song.new("Flower of Scotland", 1.00)
    @song2 = Song.new("Tragedy", 2.00)
    @song3 = Song.new("Power of Love", 5.00)

    @playlist1 = [@song1, @song2, @song3]

    @room1 = Room.new(5, @playlist1, 10.00)
  end

  def test_room_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_playlist_exists
    assert_equal(@playlist1, @room1.playlist)
  end

  def test_room_fee_set
    assert_equal(10.00, @room1.room_fee)
  end

  def test_add_song_to_room_playlist
    @new_song = Song.new("Loco", 3.50)
    @room1.add_song_to_playlist(@new_song)
    assert_equal(@new_song, @room1.playlist.last)
  end






end
