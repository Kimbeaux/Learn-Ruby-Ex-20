input_file = ARGV[0]  #  unpacks the file listed in the ruby argument variable into the input_file variable

def print_all(f)      # defines print_all method
  puts f.read()       # call function read on variable f w/ no parameters
end

def rewind(f)         # defines rewind method
  f.seek(0, IO::SEEK_SET)   #  call function seek on variable f to absolute location 0
end

def print_a_line(line_count, f)  #  defines print_a_line method for variables line_count and f
  puts "#{line_count} #{f.readline()}"    #  prints line_count and the current line of f
end

current_file = File.open(input_file)   #  set variable current_file to opened file input_file, unpacked above 

puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)   # print the whole file

puts "Now let's rewind, kind of like a tape."

rewind(current_file)    #  move pointer back to start of file

puts "Let's print three lines:"

current_line = 1      #  initialize current line to 1
print_a_line(current_line, current_file)    #  print current line, w line number

current_line += 1  #  increment current_line to 2
print_a_line(current_line, current_file)    #  print current line, w line number

current_line += 1   #  increment current_line to 3
print_a_line(current_line, current_file)    #  print current line, w line number
