#!/usr/bin/ruby
class DirectoryName
   def initialize
   end

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
# begin
#      directory_name = Dir::pwd + "/" + "hdfr"#tickler_files"
#      puts directory_name
#      puts FileTest::directory?(directory_name)
#      if FileTest::directory?(directory_name)
#         return
#   end
#      puts "always get here?"
      #Dir::mkdir(directory_name)
#   end
end
