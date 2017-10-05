class CreateAccounts < ActiveRecord::Migration[5.1]
  def up
    create_table :accounts do |t|
      t.string   :account_email
      t.integer  :balance

      t.timestamps
    end

    Account.create!(account_email: 'mufid@outlook.com', balance: 5000)
  end

  def down
    drop_table :accounts
  end
end
