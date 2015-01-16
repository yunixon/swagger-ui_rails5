require "fileutils"
require "bundler/gem_tasks"
require 'pry'

desc "Syncronize Swagger UI"
task :sync_swagger_ui do

  source      = File.join File.dirname(__FILE__), "swagger-ui-src", "dist"
  destination = File.join File.dirname(__FILE__), "app", "assets"

  js_destination = File.join destination, "javascripts", "swagger-ui"

  idx = File.join js_destination, "index.js"

  File.read(idx).each_line do | line |
    if line =~ /require (.*)/
      file = "#{source}/#{$1.strip}"
      # hack to make throbber.gif available on asset pipeline
      if $1.strip =~ /swagger-ui\.js/
        contents = File.read file
        File.open "#{file.gsub(source, js_destination)}.erb", "w" do | f |
          f << contents.gsub("src='images/throbber.gif'", "src='<%= asset_path(\"throbber.gif\") %>'")
        end
      else
        FileUtils.cp_r file, file.gsub(source, js_destination), verbose: true
      end
    end
  end

  oauth_source = File.join source, "lib", "swagger-oauth.js"
  oauth_dest   = js_destination.gsub "swagger-ui-src", "swagger-oauth.js"

  FileUtils.cp_r oauth_source, oauth_dest, verbose: true

  css_destination = File.join destination, "stylesheets", "swagger-ui"
  css_source      = File.join source, "css"

  idx = File.join css_destination, "index.css"

  File.read(idx).each_line do | line |
    if line =~ /require (.*)\.css/
      file = "#{css_source}/#{$1.strip}.css"
      FileUtils.cp_r file, file.gsub(css_source, css_destination), verbose: true
    end
  end

end
