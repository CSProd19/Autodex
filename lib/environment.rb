require "./lib/autodex/version"
require_relative "./autodex/cli"
require_relative "./autodex/autodex"
require_relative "./autodex/api"
require "pry"
require "httparty"



module Autodex
  class Error < StandardError; end
  # Your code goes here...
end
