#!/usr/bin/env ruby

require 'rubygems'
require 'active_record'
require 'irb'
#require 'active_record/connection_adapters/abstract_mysql_adapter'

ActiveRecord::Base.establish_connection(
:adapter  => "mysql2",
:host => "127.0.0.1",
:username => "root",
:password => "ezpass",
:database => "testnames"
)

class Person < ActiveRecord::Base
 # self.table_name = "taxpayer"
end

#                 puts "working"
#IRB.start
  #
 #def MenuClass
    puts "Do you want to add or edit a record?"
    @goodanswer = ["ADD","EDIT","END"]
    answer = gets
    answer = answer.chomp.upcase
    while @goodanswer.index(answer) == nil
        puts "Please type in 'ADD' or 'EDIT' - or 'END' if you're done."
        STDOUT.flush  
        answer = gets
        answer = answer.chomp.upcase
      end
    if answer == "ADD"
      #c1.DataAdd
      puts "add a record"
    elsif answer == "EDIT"
        #c1.DataEdit
        puts "Whose information do you want to update?"
        input_name = gets
        input_name = input_name.chomp.upcase
     #   //IRB.start
        
     #   name_to_edit = Person.find(:first)
        #name_to_edit = Person.where(:name1 => input_name).first
        name_to_edit = Person.where(['name1 LIKE ?', "#{input_name}%"]).first
        puts %{#{name_to_edit.inspect}}
        
        #puts Name.name1(name_to_edit)
      end

#end

#c1 = Names
#c1.MenuClass


# taxpayer = Names.find(name)
 # find(:first, :conditions => "NAME1 = '#{name}'")
 #Names.find_by_NAME1(name)
  #Names.find_by_NAME1_and_NAME2(NAME1,NAME2)
 # puts "after assigning first row to names"
 # puts taxpayer.NAME1
#end


    # WANT TO LOOP TILL GET A USABLE ANSWER
     