#!/usr/bin/env ruby
  require 'CSV'
  require 'digest/md5'
  filename = 'SSN-ONLY.CSV'

  all_digest = Digest::MD5.hexdigest(File.read(filename))

  incr_digest = Digest::MD5.new()
  
  file = File.open(filename, 'r')
  
  file.each_line do |line|
    puts file.each
    puts incr_digest
     incr_digest << line
  end

 
