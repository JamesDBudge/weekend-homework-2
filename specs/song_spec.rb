require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("Flower of Scotland", 1.00)
    @song2 = Song.new("Tragedy", 2.00)
    @song3 = Song.new("Power of Love", 5.00)


  end

  def test_song_has_name
    assert_equal("Tragedy", @song2.name)
  end

  def test_song_has_price
    assert_equal(5.00, @song3.price)
  end








end
