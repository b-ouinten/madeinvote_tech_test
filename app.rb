require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'positive_integer'
require 'menu'

p Menu.new.show
