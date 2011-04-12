#!/usr/bin/ruby
class DirectoryName
   def initialize
   end

   def to_s
      Dir.getwd
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
