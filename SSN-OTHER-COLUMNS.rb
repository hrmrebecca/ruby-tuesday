#!/usr/bin/env ruby
require "csv"  
require 'digest/md5' 

class CSVSSNFF  
 
  def initialize(filename)  
    puts "setting filename=",filename
    @filename = filename
   end  
    
  def Encrypt
    input_array = CSV.read(@filename) # reads csv file into array named'input_array"
    incr_digest = Digest::MD5.new() 
    puts "first encryption? ",incr_digest
    x=0
    input_array.each do |r|
    x=r[8]
      r[8] = Digest::MD5.hexdigest(x)
      puts r[0...10]
    end
    #puts "Following Accounts are in Harleyville"  
    #harleyVille.each {|m| puts m[0]  }
  end  
    
  def addSampleResult  
    @regularssn << ["200","0","0","C","HUNTER REBECCA","987654321"]  
    CSV.open(@filename, 'w') do |csv|  
      @regularssn.each do |result|  
        csv << result  
      end  
    end  
  end  
    
  c1 = CSVSSNFF.new("SSNFF.csv")  #passes the filename into the class
  c1.Encrypt # displays CSV as two dimensional array  
  #c1.EncryptSSN # 
 # c1.addSampleResult()  
 # c1.printUnencrypted # print updated csv file  
end  