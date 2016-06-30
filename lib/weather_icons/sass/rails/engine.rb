module WeatherIcons
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer 'weather-icons-sass.assets.precompile', group: :all do |app|
          %w(stylesheets fonts).each do |sub|
            app.config.assets.paths << root.join('assets', sub).to_s
          end

          %w(eot svg ttf woff woff2).each do |ext|
            app.config.assets.precompile << "weather-icons/weather-icons-webfont.#{ext}"
          end
        end
      end
    end
  end
end
