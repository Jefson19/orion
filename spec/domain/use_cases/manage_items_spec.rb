# spec/domain/use_cases/manage_items_spec.rb
require 'rspec'
require 'pry'
require_relative '../../../app/domain/use_cases/manage_items'
require_relative '../../../app/domain/entities/item'
require_relative '../../../app/domain/repositories/item_repository'  # Adicione este require
require_relative '../../../app/infrastructure/persistence/item_repository_impl'

RSpec.describe ManageItems do
  let(:repository) { ItemRepositoryImpl.new }
  let(:use_case) { described_class.new(repository) }

  it "creates and retrieves an item" do
    item = Item.new(id: 4, name: "Camisa do Bahia Tricolor", description: "Camisa do Bahia tricolor")
    use_case.create_item(item)

    expect(use_case.find_item(4)).to eq(item)
  end
end
