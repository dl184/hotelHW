require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../bar.rb')

class TestGuest < MiniTest::Test

  def setup
    @song = Song.new("Imagine", "John Lennon")
    @guest = Guest.new("Clive", 20, @song)
  end

  def test_guest_name
    assert_equal("Clive", @guest.name)
  end

  def test_money
    assert_equal(20, @guest.money)
  end



end
