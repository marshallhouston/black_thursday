require './lib/csv_parser'
require './lib/item'

class ItemRepository
include CsvParser

attr_accessor :items

    def initialize(file_name)
        @items = []
        item_contents = parse_data(file_name)
        item_contents.each do |row|
          @items << Item.new(
            {name: row[:name],
            description: row[:description],
            unit_price: row[:unit_price],
            created_at: row[:created_at],
            updated_at: row[:updated_at],
            merchant_id: row[:merchant_id].to_i})
        end
    end

    def all
        @items
    end

    def find_by_id

    end

    def find_by_name(name)
        @items.find {|item| item.name == name}
    end

    def find_all_with_description(description)
        @items.select {|item| item.description == description}
    end

    def find_all_by_price
         @items.select {|item| item.unit_price == unit_price}
    end

    def find_all_by_price_in_range(lower, higher)
        @items.select {|item| lower.to_i < item.unit_price.to_i && item.unit_price.to_i < higher.to_i }
    end

    def find_all_by_merchant_id(merchant_id)
        @items.select {|item| item.merchant_id == merchant_id}
    end

    # def assign_id
    #   @items #iterate through, assign each item object an id# that increments by one.
    # end
end
