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

class UserInteraction

#IRB.start
  #
  def run
    @action = ask("Do you want to add or edit a record")
    if %w[add edit exit].include?(@action.to_s)
       send(@action)
     else
       puts "`#{@action}` is not a valid action. Please try again"
      run
     end
  end
  
  def ask(question)
    puts question
    gets.chomp.downcase
  end

  def add
   
    last_name = ask("Last name?").upcase
    first_name = ask("First name?").upcase
    middle_name = ask("Middle name?").upcase
    suffix = ask("Suffix?").upcase
    full_name = "#{last_name} #{first_name} #{middle_name} #{suffix}"
    puts full_name
  end
  
  def edit
    @input_name = ask("Whose information do you need to edit?")
    name_to_edit = Person.where(['name1 LIKE ?', "#{@input_name}%"]).first
    #puts "after record found"
    ask("Is this the correct record?: '#{name_to_edit.name1}")
    
  end
        
end

runtime = UserInteraction.new

runtime.run
