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
  #   validates_presence_of     :subdomain, :name, :email_address, :password
 # self.table_name = "taxpayer"
  validates :name1, :uniqueness => true, :presence => true
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
    
    person = Person.new(:name1 => full_name)
    if person.save
      puts "saved!"
    else
      puts person.errors.full_messages.to_sentence
      # puts "There is already someone by that name in the database."
      run
    end
    #check_dup = Person.where(['name1 LIKE ?', "#{full_name}"]).first
   # if check_dup.nil? 
      # .new .save .false
      # Person.create(:ID => 321, :name1 => full_name, :name2 => '', :O1_LN => '', :O1_FN => '', :O1_MN => '', :O1_S => '', :O2_LN => '', :O2_FN => "", :O2_MN => "", :O2_S => "", :O1_TN => "")
      # Person.save!
      # person = Person.new(:ID => 321, :name1 => full_name)
      # person.save!
     # Person.create!(:name1 => full_name)   
    #else
   
  #end
  
  end
  
  def findedit
    @input_name = ask("Whose information do you need to edit?").upcase
    @person_to_edit = Person.lock("LOCK IN SHARE MODE").where(['name1 LIKE ?', "#{@input_name}%"]).first
   #IRB.start
    if @person_to_edit.nil?
      puts "No one with that last name was found.  Please try again."
      run
    else
    #name_to_edit = Person.where(['name1 LIKE ?', "#{@input_name}%"]).first
      found_record = ask("Is this the correct record?: '#{@person_to_edit.name1}'").upcase
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
          @person_to_edit.name1 = @changed_name
          @person_to_edit.save
          # Person.name1 = @changed_name
          # put Person.name1
        else
          edit
        end
    end

    
end

runtime = UserInteraction.new

runtime.run
