require 'rubygems'
require 'daemons'
path = File.expand_path(File.dirname(__FILE__))+'/memwatch.rb'

Daemons.run(path)
