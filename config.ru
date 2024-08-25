# config.ru

require_relative 'config/application'

run Orion::Application.new
