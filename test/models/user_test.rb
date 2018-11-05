# test/models/user_test.rb
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(first_name: 'John', last_name: 'smith', email: 'john@example.com')
    assert user.valid?
  end

  test 'invalid without first_name' do
    user = User.new(email: 'john@example.com')
    refute user.valid?, 'user is valid without a name'
    assert_not_nil user.errors[:first_name], 'no validation error for name present'
  end

  test 'invalid without email' do
    user = User.new(first_name: 'John', last_name: 'smith')
    refute user.valid?
    assert_not_nil user.errors[:email]
  end
end
