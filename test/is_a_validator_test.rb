require 'test_helper'

class IsAValidatorTest < ActiveSupport::TestCase
  test 'AccountOwner should fail to save if `account` does not implement Account' do
    not_an_account = NotAnAccount.create()
    account_owner = AccountOwner.create(account: not_an_account)

    assert_nil account_owner.id, 'account_owner should not have saved with an invalid account'
    assert_not_nil account_owner.errors[:account], 'account_owner should have an error on account'
  end

  test 'AccountOwner should save if `account` implements Account' do
    account = AccountImplementer.create()
    account_owner = AccountOwner.create(account: account)

    assert_not_nil account_owner.id, 'account_owner should have saved with a valid account'
    assert_nil account_owner.errors[:account], 'account_owner should not have an error on account'
  end
end
