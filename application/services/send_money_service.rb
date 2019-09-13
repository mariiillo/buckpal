# frozen_string_literal: true

# Service Object.
class SendMoneyService
  AccountNotFound = Class.new(StandardError)

  def send_money(command)
    # TODO: validate business rules.
    check_existence_of(command.source_account_id)
    check_existence_of(command.target_account_id)

    # TODO: manipulate model state.
    # TODO: return output.
  end

  private

  def check_existence_of
    true || raise(AccountNotFound)
  end
end
