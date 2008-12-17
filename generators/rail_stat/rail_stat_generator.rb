class RailStatGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.template "public/stylesheets/railstat.css", "public/stylesheets/railstat.css" 
      m.template "public/stylesheets/tabs.css", "public/stylesheets/tabs.css" 
      m.template "public/javascripts/railstat.js", "public/javascripts/railstat.js"

      m.directory "public/images/railstat"
      1.upto(40) { |i| m.template "public/images/railstat/#{i}.gif", "public/images/railstat/#{i}.gif" }
      m.template "public/images/railstat/other.gif", "public/images/railstat/other.gif"
      m.template "public/images/railstat/1pxtr.gif", "public/images/railstat/1pxtr.gif"

      m.template "db/ip-to-country.mysql.sql", "db/ip-to-country.mysql.sql"
      m.migration_template "db/railstat.rb", "db/migrate", :migration_file_name => 'railstat'
     
      m.template "README", "README_RAILSTAT"
    end
  end
end
