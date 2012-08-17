#!/usr/bin/env ruby
require 'rubygems'
require 'mysql'
require 'active_record'
require 'irb'
#require 'active_record/connection_adapters/abstract_mysql_adapter'

ActiveRecord::Base.establish_connection(
:adapter  => "mysql",
:host => "127.0.0.1",
:username => "root",
:password => "ezpass",
:database => "testnames"
)

class Name < ActiveRecord::Base
end

puts "working"
IRB.start

