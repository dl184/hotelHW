require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRooms <MiniTest::Test

  def setup
    @room = Room.new(12, 2)
    @song = Song.new("She Bangs", "Ricky Martin")
    @guest1 = Guest.new("Paul", 96, @song)
  end

  def test_room_number
    assert_equal(12, @room.number)
  end


  def test_empty_playlist
    assert_equal([], @room.playlist)
  end

  def test_empty_room
    assert_equal([], @room.guests)
  end

  def test_check_in
    @room.check_in(@guest1) #action
    assert_equal(1, @room.guests.length)
  end

  def test_check_out
    @room.check_in(@guest1)
    @room.check_out(@guest1)
    assert_equal(0, @room.guests.length)
  end

  def test_add_songs
    @room.add_song(@song)
    assert_equal(1, @room.playlist.length)
  end

  def test_check_capacity
    @room.check_in(@guest1)
    @room.check_in(@guest1)
    @room.check_in(@guest1)
    assert_equal(2, @room.capacity)
  end

  def test_fav_song
    @room.add_song(@song)
    assert_equal("Whoo", @room.fav_song(@song))
  end


end
