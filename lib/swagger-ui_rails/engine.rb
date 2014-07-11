module Swagger
  class Engine < ::Rails::Engine

    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ swagger-ui.js }
      Rails.application.config.assets.precompile += %w{ swagger-oauth.js }
      Rails.application.config.assets.precompile += %w{ swagger-ui.css }
      Rails.application.config.assets.precompile += %w{ swagger-ui/reset.css }
      Rails.application.config.assets.precompile += %w{ swagger-ui/screen.css }
      Rails.application.config.assets.paths << root.join("app", "assets")
    end

  end
end
