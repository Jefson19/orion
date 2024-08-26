require_relative '../../../presenters/item_presenter'

module Api
  module V1
    class ItemsController
      def initialize(use_case)
        @use_case = use_case
      end

      def index
        items = @use_case.list_items

        items.map{ |item| ItemPresenter.new(item).as_json }
      end

      def show(id)
        item = @use_case.find_item(id)

        ItemPresenter.new(item).as_json
      end

      def create(params)
        item = Item.new(params)
        @use_case.create_item(item)
        # Apresenta a resposta usando um presenter com message
      end

      def update(id, params)
        item = Item.new(params)
        @use_case.update_item(id, item)
        # Apresenta a resposta usando um presenter com message
      end

      def delete(id)
        @use_case.delete_item(id)
        #Apresenta a resposta usando um presenter com message
      end
    end
  end
end
