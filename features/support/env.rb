require "aruba/cucumber"
require "pathname"

ENV['PATH'] = File.expand_path('../../bin',File.dirname(__FILE__)) +
              File::PATH_SEPARATOR + ENV['PATH'].to_s

module PathHelpers
  def tmp_path
    @tmp_path ||= Pathname("../../..").expand_path(__FILE__) + "tmp"
  end
end

World(PathHelpers)

Before do
  @old_home =  ENV['HOME']
  ENV['HOME'] = (tmp_path + 'aruba').to_s
end

After do
  ENV['HOME'] = @old_home
end
