require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # success case
  # test 'valid: User with all valid things' do
  #   user = User.new(email: "user0000@test.com", password_digest: "123qwe", role: 1)
  #   assert user.valid?
  # end

  # fail case1
  # invalid email, valid password, valid role
  # test 'invalid: email is not valid' do
  #   user = User.new(email: "user01", password_digest: "123qwe", role: 1)
  #   assert user.valid?
  # end

  # fail case2
  # taken email, valid password, valid role
  # test 'invalid: email has been taken' do
  #   user = User.new(email: users(:one).email, password_digest: "123qwe", role: 1)
  #   assert user.valid?
  # end

  # fail case3
  # valid email, invalid password, valid role
  # test 'invalid: password cannot be blank' do
  #   user = User.new(email: users(:one).email, password_digest: "", role: 1)
  #   assert user.valid?
  # end

   # fail case4
  # valid email, valid password, invalid role
  # test 'invalid: role can be only in [0 1 2]' do
  #   user = User.new(email: users(:one).email, password_digest: "123qwe", role: 5)
  #   assert user.valid?
  # end

  # ---------------------------------------------------------------------------------

  # test Active Model has_secure_password

  # success case
  # test 'valid: User with valid password' do
  #   user = User.new(email: "user0000@test.com", password: "123qwe", role: 1)
  #   assert user.valid?
  # end

  # fail case
  # test 'valid: User with invalid password' do
  #   user = User.new(email: "user0000@test.com", password: "", role: 1)
  #   assert user.valid?
  # end
end
