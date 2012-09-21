require "rails_admin_facebook_generate_test_user/engine"

module RailsAdminFacebookGenerateTestUser
  def self.config(entity = nil, &block)

  end

  def self.reset

  end
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class FacebookGenerateTestUser < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :collection do
          true
        end        
        
        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :controller do
          Proc.new do
            @response = {}

            if request.post?
              #results = @abstract_model.model.run_import(params)
              results = null
              @response[:notice] = results[:success].join("<br />").html_safe if results[:success].any?
              @response[:error] = results[:error].join("<br />").html_safe if results[:error].any?
            end

            render :action => @action.template_name
          end
        end

        register_instance_option :link_icon do
          'icon-folder-open'
        end        

      end
    end
  end
end

