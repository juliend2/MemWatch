require 'rubygems'
require 'daemons'

Daemons.run(File.expand_path(File.dirname(__FILE__))+'/memwatch.rb')
