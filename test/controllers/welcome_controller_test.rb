require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
  end

  test "should get index" do
    get root_url
    assert_response :success
  end

  #View tests
=begin
  test "should be coverage rules link" do
    get root_url
    assert_select "span a", {count: 1, text: "Coverage Rules"}, "Needs to contains link to coverage page"
  end
=end
  test "should be employees link" do
    get root_url
    assert_select "span a", {count: 1, text: "Employees"}, "Needs to contains link to employees page"
  end

  test "should be schedules link" do
    get root_url
    assert_select "span a", {count: 1, text: "Schedule"}, "Needs to contains link to schedules page"
  end

  test "should be roles button" do
    get root_url
    assert_select "form input", 1
  end
end
