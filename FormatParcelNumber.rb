#!/usr/bin/env ruby

require "csv"  
#require 'digest/md5' 

class CSVSSNFF  
 
  def initialize(filename)
    
    @filename = filename  # @ sets @filename as a variable that can be accessed by other methods in this class
    
  end  
    
  def add_tic
    @data_array = CSV.read(@filename)  # reads csv file into array named data_array    - tried to use headers option; failed
    
   # @output_array = Array.new   # creates an array named output_array
   # @output_array = @data_array.first # puts the header row in the output_array  - this puts several rows at the top of my file
                                       # with seemingly random numbers in the fields
                                       
   # @data_array.shift # gets rid of my header row
    
    @data_array.each_with_index do |r,i| # loop through the array
      next if i.zero?
     #   x = r[5] # set x = to ssn
     #   if x != nil # checks for presence of ssn 
    #look at the parcel number (prior to extension) and search for it throughout the file
    #if you find any, put the original and all the found ones to a new file
    #  
    #
    
      r[1] = "'#{r[1]}"
     #   end
    #@output_array << r[0...17] # builds output_array by 'pushing' the current row into it
    end 
  end

  def WriteNewFile  #creating a method called WriteNewFile
    
    CSV.open("newtestparcelnum.csv", "wb") do |csv|  # opens csv file named newtestparcelnum.csv in 'write' mode; overwrites existing file of same name
    
   #    @output_array.each do |result|  # loops through array
        @data_array.each do |result|  # loops through array  
          csv << result  # writes each record
        end 
    end
   
  end
  
end
     
c1 = CSVSSNFF.new("TestParcelNum.csv")  #passes the filename into the class
c1.add_tic # reads the file into an array, updates the ssn in the array as an encrypted number
c1.WriteNewFile # writes the updated array to a new file

