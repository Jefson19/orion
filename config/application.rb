# config/application.rb
require 'rack'
require_relative 'boot'
require_relative '../app/infrastructure/web/routes'
require_relative '../app/controllers/api/v1/items_controller' # Adicione isso

module Orion
  class Application
    def call(env)
      router = Routes.new
      router.call(env)
    end
  end
end
