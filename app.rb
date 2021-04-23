require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'positive_integer'

p PositiveInteger.new(17).find_greatest_binary_gap