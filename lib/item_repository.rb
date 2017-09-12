require './lib/csv_parser'
require './lib/item'

class ItemRepository
include CsvParser

attr_accessor :items

    def initialize(file_name)
        @items = []
        item_parse_data(file_name)
    end

    def all
        @items
    end 

    def find_by_id

    end 

    def find_by_name(name)
        @items.select {|item| item.name == name}
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

    def find_all_by_merchant_id
    end 
end
