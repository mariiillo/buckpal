# frozen_string_literal: true

require 'roda'
require_relative 'adapters/ports/in/web/send_money_controller'

class App < Roda
  route do |r|
    r.on "accounts" do
      r.post "send_money" do
        source_account_id = r.params['source_account_id']
        target_account_id = r.params['target_account_id']
        amount = r.params['amount']

        SendMoneyController.new.call(
          source_account_id: source_account_id,
          target_account_id: target_account_id,
          amount: amount
        )
      end
    end
  end
end

run App.freeze.app
