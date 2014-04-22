require 'timetrap/hipchat'
require 'yaml'

@hipchat_config = YAML.load_file File.join(File.dirname(__FILE__), 'hipchat.yml')
Timetrap::Hipchat.new(@hipchat_config['hipchat']['token'],
  @hipchat_config['hipchat']['room'],
  @hipchat_config['hipchat']['display_name']).resume
