#!/usr/bin/ruby
class DirectoryName

   def to_s
      Dir.getwd
   end

   def create_dir(dir_name)
      Dir.mkdir(dir_name) 
   end

   def create_sequence_array_to(size)
      a = Array.new
      1.upto(size) {|i| a.push(i)}
      return a
   end
end

foo = DirectoryName.new()
foo.create_sequence_array_to(2).each {|i| foo.create_dir(i.to_s())}
