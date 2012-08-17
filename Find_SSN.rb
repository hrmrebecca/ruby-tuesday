#!/usr/bin/env ruby

require "csv"  

class FindSSN
 
  def initialize(filename)
    @filename = filename  # @ sets @filename as a variable that can be accessed by other methods in this class
    @yes_options = ["YES","AYE","Y","YEP"]
    @no_options = ["NO","NOPE","N","NAY"]
  end  
    
  def create_array
    @data_array = CSV.read(@filename)  # reads csv file into array named data_array    
  end

  def find_name
    puts "Whose information are you looking for?"  #displays a prompt for the user
    name = gets   #assigns user input to a variable
    name = name.chomp.upcase # .chomp gets rid of carriage control

    #select is the same method as find_all  an alias if you will
    #detect is an alias for find finding one
    found_names = @data_array.select do |r|  
     # r[4]== name  # want to see if any part of name is found in r[4]
      found_names = r[4].match(name)
    end
    
    if found_names.any?        
      found_names.each do |r|
        puts "Name:  #{r[4]} \nSSN:#{r[5][-6,6]} \nAddress: #{r[7]} #{r[8]}, #{r[9]}  #{r[10]}"
      end
    else
      # @data_array.index name    A way to find if the name is there?
      puts "I'm sorry, we don't have anyone by that name"
    end
  end
  
#%w[a b c d]  " # ==> " denotes that you're explaining what that line of code does
# creates an array ["a","b","c","d"]
  def try_again
    puts "Would you like to try again? "
    response = gets
    response = response.chomp.upcase
           
    if @yes_options.include?(response)
      find_name
    elsif @no_options.include?(response)
      puts "Thank you for your time."
    else
      puts "I did not understand your response."
      try_again
    end 
  end

end

c1 = FindSSN.new("SSNFF.csv")  #passes the filename into the class
c1.create_array # reads the file into an array
c1.find_name
c1.try_again

