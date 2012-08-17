#!/usr/bin/env ruby

require 'csv'       # call the CSV libray
require 'digest/md5' # call the MD5 library


#array_SSN = CSV.read("c:\Users\mom\RubyStuff\SSN-ONLY.csv", headers: true)  #  read my CSV file into an array called array_SSN and allow for a header line
array_SSN = CSV.read("c:/Users/mom/RubyStuff/SSN-ONLY.csv")
puts array_SSN[0]

incr_digest = Digest::MD5.new()  #setting up an array called incr_digest
output_SSN=Array.new 
 
 #array_SSN.each do                #this is setting up to loop through each record
 #   incr_digest 
 #   puts incr_digest
 # end

x=0
while x < 9
  #incr_digest = Digest::MD5(array_SSN[x])
  incr_digest = Digest::MD5 
  a = incr_digest
  puts a
#  incr_digest << output_SSN
  x = x+1
end
puts output_SSN

 # file = array_SSN                           #setting “file” variable equal to  my array, not sure if this is necessary

  #file.each_line do |line|                #this is setting up to loop through each record
 

  puts incr_digest.hexdigest            #this will display the array on as one long string

