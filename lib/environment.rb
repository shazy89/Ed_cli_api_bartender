require 'pry'
require 'rest-client'
require 'json'
require 'colorize'


require_relative "./Ed_cli_api_bartender/version"
require_relative "./Ed_cli_api_bartender/cli.rb"
require_relative "./Ed_cli_api_bartender/api.rb"
require_relative "./Ed_cli_api_bartender/coctails.rb"


cli = Cli.new
cli.run

#binding.pry