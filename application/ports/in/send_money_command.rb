# frozen_string_literal: true

require 'dry-validation'

# Command class.
# This class should take care of the validation of the data that will be sent to
# the Service Object.
class SendMoneyCommand < Dry::Validation::Contract
  params do
    required(:source_account_id).value(:integer)
    required(:target_account_id).value(:integer)
    required(:amount).value(:integer)
  end
end
