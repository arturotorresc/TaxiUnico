module Trestle
  module Auth
    module ControllerMethods
      extend ActiveSupport::Concern

      included do
        before_action :authenticate_admin!
        before_action :require_admin!
      end

      protected

      def require_admin!
        redirect_to root_url, alert: "Only the admin is authorized to access this area" unless current_admin
      end

    end
  end
end
