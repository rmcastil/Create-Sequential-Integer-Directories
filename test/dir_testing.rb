require 'create_mult_dir'
require 'test/unit'
class TestDirectories < Test::Unit::TestCase
   def test_current_directory_name
      assert_equal("/Users/rmcastil/dev/create_43_folders", DirectoryName.new().to_s)
   end

   def test_single_digit_directory_created
      DirectoryName.new().create_int_dir(1)
      assert(File.directory?("01"))
      Dir.delete("01")
   end

   def test_multiple_digit_directory_created
      DirectoryName.new().create_int_dir(22)
      assert(File.directory?("22"))
      Dir.delete("22")
   end

   def test_no_negative_directory_created
      DirectoryName.new().create_int_dir(-5)
      assert(! File.directory?("-5"))
   end

   def test_string_sequence_created
      # Method that creates a sequence of strings
      someArray = DirectoryName.new().create_sequence_array_to(5) 
      assert_equal(5, someArray.length)
      assert_equal(1, someArray[0])
      assert_equal(5, someArray[4])
      assert_equal(nil, someArray[20])
   end
end
