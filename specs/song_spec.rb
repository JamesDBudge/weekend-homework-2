require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("Flower of Scotland")
    @song2 = Song.new("Tragedy")
    @song3 = Song.new("Power of Love")


  end

  def test_song_has_name
    assert_equal("Tragedy", @song2.name)
  end

  def test_song_has_price
    assert_equal(5.00, @song3.price)
  end








end
