require 'csv'

module CsvParser

  def merchant_parse_data(file_name)
    contents = CSV.open file_name, headers: true, header_converters: :symbol

    contents.each do |row|
      @merchants << Merchant.new({id: row[:id], name: row[:name]})
    end
  end

  def item_parse_data(file_name)
    contents = CSV.open file_name, headers: true, header_converters: :symbol

    contents.each do |row|
      @items << Item.new({name: row[:name], description: row[:description], unit_price: row[:unit_price]})
    end
  end

end
