require 'rubygems'
require 'RMagick'
require 'ruby_marks/document'
require 'ruby_marks/config'
require 'ruby_marks/clock_mark'
require 'ruby_marks/group'
require 'ruby_marks/rgb'
require 'ruby_marks/version'


magick_version = `convert -version`

if magick_version =~ /Q16/ 
  puts %{
    *** IMPORTANT: You are running the ImageMagick under 16bits quantum depth. This configuration is used
        in very specific cases and can cause RMagick work a bit slow. See more details in this forum post
        http://rubyforge.org/forum/forum.php?thread_id=10975&forum_id=1618 ***
  }
end

@@clock_marks_scan_x = 62

@@intensity_percentual = 40

@@recognition_colors = ["#000000"]

@@default_marks_options = %w{A B C D E}

@@default_distance_between_marks = 25