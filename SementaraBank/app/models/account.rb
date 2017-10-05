class Account < ApplicationRecord
  def top_up_balance(amount)
    #validated_amount = PaymentVerifier.verify_top_up(Time.now, amount)
    #return false unless validated_amount

    self.balance += amount.to_i
    self.save!

    true
  end

  def self.useless_tx(amount)
    Account.transaction do
      acc = Account.find(self.id)
      acc.balance += amount.to_i
      acc.save!
    end
  end

  def self.top_up_dbtx(account, amount)
    connection.execute("UPDATE accounts SET balance=balance+#{amount.to_i} WHERE id=#{account.id.to_i}")
  end

  def self.find_default
    Account.first
  end
end
