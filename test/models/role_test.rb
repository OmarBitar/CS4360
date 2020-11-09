require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "roles have all required credentials" do
    role = Role.new
    assert role.invalid?
    assert role.errors[:name].any?
    assert role.errors[:priority].any?

  end

  test "Role priority must be positive nonzero" do
    role = Role.new(name: "Driver")

    role.priority = -1
    assert role.invalid?
    assert_equal ['must be greater than 0'], role.errors[:priority]

    role.priority = 0
    assert role.invalid?
    assert_equal ['must be greater than 0'], role.errors[:priority]

    role.priority = 1
    assert role.valid?

  end
end
