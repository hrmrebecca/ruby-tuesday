#!/usr/bin/env ruby

require 'rubygems'
require 'active_record'

class Person < ActiveRecord::Base
end

class Phone < ActiveRecord::Base
end

class CLInterface

  def initialize(options)
    @debug = options.delete(:debug)
  end

  def run
    @action = ask("What do you want to do (add, edit, or exit)?")
    puts "DEBUG MODE ON" if @debug
    if %w[add edit exit].include?(@action.to_s)
      send(@action)
    else
      puts "`#{@action}` is not a valid action. Please try again"
      run
    end
  end

  protected

  def ask(question)
    puts question
    gets.chomp
  end

  def add
    puts "running add action"
  end

  def edit
    puts "running edit action"
  end

  def quit
    puts "Exiting"
    exit
  end

end

class CLInterface2 < CLInterface

  def initialize(options)
    super
    run
  end

  def ask(question)
    puts "#{question} ANSWER ME DANG YOU!!!!"
    gets.chomp
  end

  def add
    puts "AWESOME NEW ADD ACTION!>!>!>!>>!>!>!"
  end

end

options = {}
options[:debug] = !ENV['debug'].nil?

runtime = CLInterface2.new(options)
# runtime.run
