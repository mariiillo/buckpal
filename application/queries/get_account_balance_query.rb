# frozen_string_literal: true

# Query Object (this object does not modify the state of any entity...it just
# get its state)
class GetAccountBalanceQuery
  def initialize(load_account_port:)
    @load_account_port = load_account_port
  end

  def call(account_id:)
    @load_account_port.find(account_id).balance
  end
end
