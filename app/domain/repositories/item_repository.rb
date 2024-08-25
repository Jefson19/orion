class ItemRepository
  def all
    raise NotImplementedError
  end

  def find(id)
    raise NotImplementedError
  end

  def create(item)
    raise NotImplementedError
  end

  def update(id, item)
    raise NotImplementedError
  end

  def delete(id)
    raise NotImplementedError
  end
end
