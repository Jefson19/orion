# config/boot.rb
require 'bundler/setup'
Bundler.require(:default)

# Carrega todos os arquivos em 'app'
Dir[File.expand_path('../app/**/*.rb', __dir__)].sort.each { |file| require file }
