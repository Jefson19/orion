# app/infrastructure/web/routes.rb
require 'sinatra/base'
require_relative '../../../app/controllers/api/v1/items_controller'

class Routes < Sinatra::Base
  set :show_exceptions, false

  before do
    content_type 'application/json'
  end

  get '/api/v1/items' do
    controller = Api::V1::ItemsController.new(ManageItems.new(ItemRepositoryImpl.new))
    controller.index.to_json
  end

  get '/api/v1/items/:id' do
    controller = Api::V1::ItemsController.new(ManageItems.new(ItemRepositoryImpl.new))
    controller.show(params[:id]).to_json
  end

  post '/api/v1/items' do
    controller = Api::V1::ItemsController.new(ManageItems.new(ItemRepositoryImpl.new))
    controller.create(JSON.parse(request.body.read)).to_json
  end

  put '/api/v1/items/:id' do
    controller = Api::V1::ItemsController.new(ManageItems.new(ItemRepositoryImpl.new))
    controller.update(params[:id], JSON.parse(request.body.read)).to_json
  end

  delete '/api/v1/items/:id' do
    controller = Api::V1::ItemsController.new(ManageItems.new(ItemRepositoryImpl.new))
    controller.delete(params[:id]).to_json
  end

  not_found do
    status 404
    { error: 'Not Found' }.to_json
  end
end
