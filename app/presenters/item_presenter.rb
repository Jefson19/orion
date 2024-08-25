# app/presenters/item_presenter.rb

class ItemPresenter
  def initialize(item)
    @item = item
  end

  def as_json
    {
      id: @item.id,
      name: @item.name,
      description: @item.description
    }
  end
end
