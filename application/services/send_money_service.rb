# frozen_string_literal: true

# Service Object.
class SendMoneyService
  attr_reader :load_account_port, :account_lock, :update_account_state_port

  def send_money(_command)
    # TODO: validate business rules.
    # TODO: manipulate model state.
    # TODO: return output.
  end
end
