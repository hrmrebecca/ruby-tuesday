#!/usr/bin/env ruby

require 'rubygems'
require 'mysql'
require 'active_record'
#require 'active_record/connection_adapters/abstract_mysql_adapter'

ActiveRecord::Base.establish_connection(
:adapter  => "mysql",
:host => "127.0.0.1",
:username => "root",
:password => "ezpass",
:database => "testnames"
)
#dbh = Mysql.real_connect("localhost", "root", "ezpass", "testnames")
# self.table_name = "names"
# host: 127.0.0.1
class Names < ActiveRecord::Base
#  puts "before assigning self to Names"
# puts self.table_name
 self.table_name = "Names"
  puts "after assigning self to Names"
  # puts DataInput.first
end

#def FindName
  #  puts "Who are you looking for?"  #displays a prompt for the user
  #  name = gets   #assigns user input to a variable
  #  name = name.chomp.upcase # .chomp gets rid of carriage control
  #
  #puts "after class, before assigning value to taxpayer"
  #
 # taxpayer = Names.find(name)
 # puts "after assigning first row to names"
 # puts taxpayer.NAME1
#end

#def MenuClass
    puts "Do you want to add or edit a record?"
    goodanswer = ["ADD","EDIT","END"]
    answer = gets
    answer = answer.chomp.upcase
    # WANT TO LOOP TILL GET A USABLE ANSWER
    while answer != goodanswer
        puts "Please type in 'ADD' or 'EDIT' - or 'END' if you're done."
        answer = gets
        answer = answer.chomp.upcase
      end
    if answer == "ADD"
      #c1.DataAdd
      puts "add a record"
    else
      if answer == "EDIT"
        #c1.DataEdit
        puts "edit a record"
      end
    end
  
#end
#end

#c1 = Names
#c1.MenuClass