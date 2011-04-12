require 'create_mult_dir'
require 'test/unit'
class TestDirectories < Test::Unit::TestCase
   def test_current_directory_name
      assert_equal("/Users/rmcastil/dev/create_43_folders", DirectoryName.new().to_s)
   end

   def test_directory_created
      DirectoryName.new().create_dir("test")
      assert(File.directory?("/Users/rmcastil/dev/create_43_folders/test"))
      Dir.delete("test")
   end
end
