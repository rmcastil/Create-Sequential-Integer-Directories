require 'create_mult_dir'
require 'test/unit'
class TestDirectories < Test::Unit::TestCase
   def test_current_directory_name
      assert_equal("/Users/rmcastil/dev/GTD_scripts/directories", DirectoryName.new().to_s)
   end
end
