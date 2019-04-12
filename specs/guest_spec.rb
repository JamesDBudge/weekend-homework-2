require('minitest/autorun')
require('minitest/rg')

require_relative('../guest.rb')

class GuestTest < Minitest::Test

  def setup
    @guest1 = Guest.new("James", "In the End", 20.00)
  end

  def test_guest_has_name
    assert_equal("James", @guest1.name)
  end

  def test_guest_has_cash
    assert_equal(20.00, @guest1.cash)
  end

  def test_guest_favourite_song
    assert_equal("In the End", @guest1.favourite_song)
  end

  def test_guest_reacts_to_favourite_song
    assert_equal("WOOO!!!", @guest1.thats_my_fave("In the End"))
  end






end
