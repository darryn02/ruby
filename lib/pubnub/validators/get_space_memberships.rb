# Toplevel Pubnub module.
module Pubnub
  # Validator module that holds all validators modules
  module Validator
    # Validator for GetSpaceMemberships event
    module GetSpaceMemberships
      include CommonValidator

      def validate!
        return if @skip_validate

        validate_user!
      end

      private

      def validate_user!

        if @user_id == nil
          raise(
            ArgumentError.new(
              object: self,
              message: 'data: Provide user_id.'
            ),
            'data: Provide user_id.'
          )
        end

      end
    end
  end
end
