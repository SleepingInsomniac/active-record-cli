#!/usr/bin/env ruby

require 'bundler/setup'
require_relative 'db/init'

LOAD_PATHS = [
  'app/models/*.rb',
  'app/controllers/*.rb'
]

LOAD_PATHS.each do |glob|
  Dir[glob].each { |file| require_relative file }
end
