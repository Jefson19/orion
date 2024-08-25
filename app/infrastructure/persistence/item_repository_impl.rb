class ItemRepositoryImpl < ItemRepository
  def initialize
    # por enquanto vai ser estático
    item1 = Item.new(id: 1, name: "Camisa do Bahia Branca", description: "Camisa do Bahia branca")
    item2 = Item.new(id: 2, name: "Camisa do Vasco", description: "Camisa do Vasco preta")
    item3 = Item.new(id: 3, name: "Camisa do São Paulo", description: "Camisa do São Paulo tricolor")

    @items = [item1, item2, item3]
  end

  def all
    @items
  end

  def find(id)
    @items.find { |item| item.id == id }
  end

  def create(item)
    @items << item
  end

  def update(id, updated_item)
    item = find(id)
    if item
      item.name = updated_item.name
      item.description = updated_item.description
    end
  end

  def delete(id)
    @items.delete_if { |item| item.id == id }
  end
end
