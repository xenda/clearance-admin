require File.expand_path(File.dirname(__FILE__) + "/lib/insert_commands.rb")

class ClearanceAdminGenerator < Rails::Generator::Base

  def manifest

    migration_name = "add_admin_column_to_users"

     record do |m|

         m.insert_into "app/controllers/application_controller.rb",
                       "include Clearance::Admin"

         m.insert_into "app/models/user.rb", "include Clearance::Admin::User"


         m.migration_template "migrations/#{migration_name}.rb",
                              'db/migrate',
                              :migration_file_name => "clearance_admin_#{migration_name}"

     end
   end

end