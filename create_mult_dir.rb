#!/usr/bin/ruby
class DirectoryName

   def to_s
      Dir.getwd
   end

   def create_int_dir(dir_number)
      if dir_number > 0
         if dir_number < 10
            Dir.mkdir("0" + dir_number.to_s())
         else
            Dir.mkdir(dir_number.to_s())
         end
      else
         puts "Cannot create directories with negative intergers"
      end
   end

   def create_sequence_array_to(size)
      a = Array.new
      1.upto(size) {|i| a.push(i)}
      return a
   end
end

a = DirectoryName.new()
1.upto(ARGV[0].to_i) {|i| a.create_int_dir(i)}
