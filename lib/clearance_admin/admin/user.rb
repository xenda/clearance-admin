module Clearance
  module Admin  
    module User

      def self.included(model)
         model.send(:include, InstanceMethods)
         model.send(:include, AttrAccessor)
       end

       module InstanceMethods
     
         def admin?
           self.admin
         end
     
       end    


		    module AttrAccessor
		      # Hook for attr_accessor virtual attributes.
		      #
		      # :password, :password_confirmation
		      def self.included(model)
		        model.class_eval do
		          attr_protected :admin
		        end
		      end
		    end

    end
  end
end
