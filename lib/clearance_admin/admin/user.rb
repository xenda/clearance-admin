module Clearance
  module Admin  
    module User

        def self.included(model)
          model.send(:include, InstanceMethods)
        end

        module InstanceMethods
      
          def admin?
            self.admin
          end
      
        end    
    end
  end
end