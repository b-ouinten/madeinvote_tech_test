require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'application'
require 'menu'
require 'positive_integer'

Application.new.perform
