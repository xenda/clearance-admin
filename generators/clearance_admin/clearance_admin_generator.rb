class ClearanceAdminGenerator < Rails::Generator::Base

  def manifest
    migration_name = "add_admin_column_to_users"

     record do |m|

          m.migration_template "migrations/#{migration_name}.rb",
                                'db/migrate',
                                :migration_file_name => "clearance_admin_#{migration_name}"

     end
   end

end