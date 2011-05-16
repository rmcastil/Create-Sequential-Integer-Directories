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
      end
   end

   def create_sequence_array_to(size)
      a = Array.new
      1.upto(size) {|i| a.push(i)}
      return a
   end
end

# 1.upto(31) {|i| Dir.mkdir(i.to_s())}
