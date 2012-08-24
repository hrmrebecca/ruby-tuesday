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
    if %w[add findedit exit].include?(@action.to_s)
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
    check_dup = Person.where(['name1 LIKE ?', "#{full_name}"]).first
    if check_dup.nil? 
      Person.create(:ID => '321', :name1 => '#{full_name}', :name2 => '', :O1_LN => '', :O1_FN => '', :O1_MN => '', :O1_S => '', :O2_LN => '', :O2_FN => "", :O2_MN => "", :O2_S => "", :O1_TN => "")
      Person.save!
    else
      puts "There is already someone by that name in the database."
      run
    end
  
  end
  
  def findedit
    @input_name = ask("Whose information do you need to edit?").upcase
    @name_to_edit = Person.lock("LOCK IN SHARE MODE").where(['name1 LIKE ?', "#{@input_name}%"]).first
   #IRB.start
    if @name_to_edit.nil?
      puts "No one with that last name was found.  Please try again."
      run
    else
    #name_to_edit = Person.where(['name1 LIKE ?', "#{@input_name}%"]).first
      found_record = ask("Is this the correct record?: '#{@name_to_edit.name1}'").upcase
      if found_record == "YES"
        edit
      else
        findedit
      end
    end
   end
    
    def edit
      @changed_name = ask("Please type in the corrected name, last, first, middle, suffix").upcase
        check_correct = ask("Is this correct?: '#{changed_name}'")
        if check_correct == "YES"
          Person.name1 = @changed_name
          put Person.name1
        else
          edit
        end
    end

end

runtime = UserInteraction.new

runtime.run
