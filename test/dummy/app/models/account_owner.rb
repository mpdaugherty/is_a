class AccountOwner < ActiveRecord::Base
  belongs_to :account, polymorphic: true
  validates :account, is_a: Account
end
