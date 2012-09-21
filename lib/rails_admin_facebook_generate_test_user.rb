require "rails_admin_facebook_generate_test_user/engine"

module RailsAdminFacebookGenerateTestUser
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class FacebookGenerateTestUser < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

