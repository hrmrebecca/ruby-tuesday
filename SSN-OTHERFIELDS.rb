#!/usr/bin/env ruby
#!/usr/bin/env ruby
  require 'CSV'
  require 'digest/md5'
  filename = 'SSNFF.CSV'

 # all_digest = Digest::MD5(File.read(filename))

  incr_digest = Digest::MD5.new()
  
  file = File.open(filename, 'r')
  
  file.each_line do |line|
    puts file.inspect
    #puts incr_digest
    # incr_digest << line
  end

 
