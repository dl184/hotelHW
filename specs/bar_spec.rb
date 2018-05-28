require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../guest.rb')
require_relative('../room.rb')

class BarTest <MiniTest::Test

  def setup
    @till = Till.new []
    @money = Money.new(10)
    # @entry_fee = Entry_fee.new(5)

    # @drink_cost1 = Drink_cost.new("Whiskey", 5)
    # @drink_cost2 = Drink_cost.new("Beer", 4)
    # @drink_cost3 = Drink_cost.new("Wine", 6)
  end

  # charge rooms entry fee's for Karaoke
  #
  def test_add_to_till()
    assert_equal(10, @money.till) #getter
  end

end




# def test_entry_fee(entry_fee)
#   @room.entry_fee(@entry_fee)
#   assert_equal(5)
# end
