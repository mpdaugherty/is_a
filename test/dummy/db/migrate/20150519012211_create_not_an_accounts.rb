class CreateNotAnAccounts < ActiveRecord::Migration
  def change
    create_table :not_an_accounts do |t|

      t.timestamps null: false
    end
  end
end
