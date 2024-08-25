class ManageItems
  def initialize(repository)
    @repository = repository
  end

  def list_items
    @repository.all
  end

  def find_item(id)
    @repository.find(id.to_i)
  end

  def create_item(item)
    @repository.create(item)
  end

  def update_item(id, item)
    @repository.update(id.to_i, item)
  end

  def delete_item(id)
    @repository.delete(id.to_i)
  end
end
