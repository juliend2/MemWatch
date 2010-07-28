require 'rubygems'
require 'daemons'
path = File.expand_path(File.dirname(__FILE__))+'/memwatch.rb'
puts path
Daemons.run(path)
