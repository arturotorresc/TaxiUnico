module Trestle
  module Auth
    module ControllerMethods
      extend ActiveSupport::Concern

      included do
        before_action :authenticate_admin!
      end

    end
  end
end
