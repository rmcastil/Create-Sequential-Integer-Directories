require 'create_mult_dir'
require 'test/unit'
class TestDirectories < Test::Unit::TestCase
   def test_current_directory_name
      assert_equal("/Users/rmcastil/dev/create_43_folders", DirectoryName.new().to_s)
   end

   def test_directory_created
      DirectoryName.new().create_dir("foobar")
      assert(File.directory?("/Users/rmcastil/dev/create_43_folders/foobar"))
      Dir.delete("foobar")
   end

   def test_string_sequence_created
      # Method that creates a sequence of strings
      someArray = DirectoryName.new().create_sequence_array_to(5) 
      assert_equal(someArray.length, 5)
   end
end
