class Item
  attr_reader :id, :price, :name

  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
  end

  def print()
    puts (@name + " $" + @price)
  end

  def to_s()
    "#{@name} $#{@price}"
  end

end

class Store
  def initialize
    @data = Hash.new
  end

  def item_count
    @data.length
  end

  def add_item(id, name, price)
    @data[id] = Item.new(id, name, price)
  end

  def get_item(id)
    @data[id]
  end

  def calculate_cost(array)
    sum = 0
    array.each { |id| sum += @data[id].price }
    sum
  end

  def print_receipt(array)
    details = ""
    array.each { |id| details += @data[id].to_s + "\n" }
    details + "total $" + calculate_cost(array).to_s
  end
end
