require 'hocon'
require 'hocon/config_render_options'

module Puppet
  module Util
    class ConfigSaver
      def self.save(path, conf)
        File.open(path, 'w+') do |fh|
          config_string = conf.render
          fh.puts(config_string)
        end
      end
    end
  end
end