class CreateAccountOwners < ActiveRecord::Migration
  def change
    create_table :account_owners do |t|
      t.belongs_to :account, polymorphic: true

      t.timestamps null: false
    end
  end
end
