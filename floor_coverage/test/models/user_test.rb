require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user credentials must not be empty" do
    user = User.new
    assert user.invalid?
    assert user.errors[:name].any?
    assert user.errors[:email].any?
    assert user.errors[:password_digest].any?
    assert user.errors[:password_confirmation].any?
    assert user.errors[:security_question].any?
    assert user.errors[:security_answer].any?
  end


  test "User must have valid email format" do
    user = User.new(name: "Company")
    user.email = "test@test,com"
    assert user.invalid?
    assert_equal ["is invalid"], user.errors[:email]
  end

  test "User must enter a security question" do
    user = User.new(name: "Test")
    user.security_question = "Hey there"
    assert user.invalid?
    assert_equal ["isnt a question"], user.errors[:security_question]
  end






end
