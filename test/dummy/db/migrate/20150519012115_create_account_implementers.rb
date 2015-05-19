class CreateAccountImplementers < ActiveRecord::Migration
  def change
    create_table :account_implementers do |t|

      t.timestamps null: false
    end
  end
end
