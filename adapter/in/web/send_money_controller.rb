# frozen_string_literal: true

class SendMoneyController
  def call(source_account_id:, target_account_id:, amount:)
    command = SendMoneyCommand.new.call(source_account_id, target_account_id, amount)
    if command.errors.empty?
      SendMoneyService.call(command)
    end
  end
end
