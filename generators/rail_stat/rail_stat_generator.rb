class RailStatGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.template "lib/path_tracker.rb", "lib/path_tracker.rb"

      m.template "app/controllers/rail_stat_controller.rb", "app/controllers/rail_stat_controller.rb"

      m.template "app/helpers/rail_stat_helper.rb", "app/helpers/rail_stat_helper.rb"

      m.template "app/models/iptoc.rb", "app/models/iptoc.rb"
      m.template "app/models/rail_stat.rb", "app/models/rail_stat.rb"
      m.template "app/models/search_term.rb", "app/models/search_term.rb"

      m.template "app/views/layouts/rail_stat.html.erb", "app/views/layouts/rail_stat.html.erb"

      m.directory "app/views/rail_stat"
      m.template "app/views/rail_stat/_menu.html.erb", "app/views/rail_stat/_menu.html.erb"
      m.template "app/views/rail_stat/hits.html.erb", "app/views/rail_stat/hits.html.erb"
      m.template "app/views/rail_stat/lang.html.erb", "app/views/rail_stat/lang.html.erb"
      m.template "app/views/rail_stat/other.html.erb", "app/views/rail_stat/other.html.erb"
      m.template "app/views/rail_stat/path.html.erb", "app/views/rail_stat/path.html.erb"
      m.template "app/views/rail_stat/platform.html.erb", "app/views/rail_stat/platform.html.erb"
      m.template "app/views/rail_stat/refs.html.erb", "app/views/rail_stat/refs.html.erb"

      m.template "public/stylesheets/railstat.css", "public/stylesheets/railstat.css" 
      m.template "public/stylesheets/tabs.css", "public/stylesheets/tabs.css" 
      m.template "public/javascripts/railstat.js", "public/javascripts/railstat.js"

      m.directory "public/images/railstat"
      1.upto(40) { |i| m.template "public/images/railstat/#{i}.gif", "public/images/railstat/#{i}.gif" }
      m.template "public/images/railstat/other.gif", "public/images/railstat/other.gif"
      m.template "public/images/railstat/1pxtr.gif", "public/images/railstat/1pxtr.gif"

      m.template "db/ip-to-country.mysql.sql", "db/ip-to-country.mysql.sql"
      m.migration_template "db/railstat.rb", "db/migrate", :migration_file_name => 'railstat'
     
      m.template "../../README", "README_RAILSTAT"
    end
  end
end
