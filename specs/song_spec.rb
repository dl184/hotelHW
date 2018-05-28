require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong <MiniTest::Test

  def setup
    @song = Song.new("Imagine", "John Lennon")
  end

  def test_song_title
    assert_equal("Imagine", @song.title)
  end

  def test_song_artist
    assert_equal("John Lennon", @song.artist)
  end
end
