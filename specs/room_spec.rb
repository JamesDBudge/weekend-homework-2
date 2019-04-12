require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class RoomTest < Minitest::Test

  def setup
    @song1 = Song.new("Flower of Scotland")
    @song2 = Song.new("Tragedy")
    @song3 = Song.new("Power of Love")

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
    @new_song = Song.new("Loco")
    @room1.add_song_to_playlist(@new_song)
    assert_equal(@new_song, @room1.playlist.last)
  end

  def test_add_guest_to_room
    @guest = Guest.new("Andrew", "YMCA", 30.00)
    @room1.add_guest(@guest)
    assert_equal(1, @room1.guests.length)
  end

  def test_remove_guest
    @guest = Guest.new("Andrew", "YMCA", 30.00)
    @room1.add_guest(@guest)
    @room1.remove_guest()
    assert_equal(0, @room1.guests.length)
  end

  def test_adding_guest_to_full_room
    @guest = Guest.new("Jamie", "It's a Long Way to the Top", 25.00)
    @guest2 = Guest.new("Andrew", "YMCA", 30.00)
    @small_room = Room.new(1, @playlist1, 10.00)
    @small_room.add_guest(@guest)
    @small_room.add_guest(@guest2)
    assert_equal(1, @small_room.guests.length)
  end

  def test_can_guests_pay_for_room
    @guest = Guest.new("Jamie", "It's a Long Way to the Top", 25.00)
    @room1.add_guest(@guest)
    assert_equal(15.00, @guest.cash)
  end





end
