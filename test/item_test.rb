require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Mintest::Test

  def test_it_exists
  end

  def test_it_displays_id
      item = Item.new({
          :name        => "Pencil",
          :description => "You can use it to write things",
          :unit_price  => BigDecimal.new(10.99,4),
          :created_at  => Time.now,
          :updated_at  => Time.now,
          })

          assert_equal
  end

  def test_it_has_a_name

  end

  def test_it_has_a_description

  end

  def test_it_has_a_unit_price

  end

  def test_it_has_a_created_at_time

  end

  def test_it_has_an_updated_at_time

  end


end
