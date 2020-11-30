require 'test_helper'

class CoverageRulesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
    @coverage_rule = coverage_rules(:one)
  end

  test "should get index" do
    get coverage_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_rule_url
    assert_response :success
  end

  test "should create coverage_rule" do
    assert_difference('CoverageRule.count') do
      post coverage_rules_url, params: { coverage_rule: { user_id: @coverage_rule.user_id } }
    end

    assert_redirected_to coverage_rule_url(CoverageRule.last)
  end

  test "should show coverage_rule" do
    get coverage_rule_url(@coverage_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_rule_url(@coverage_rule)
    assert_response :success
  end

  test "should update coverage_rule" do
    patch coverage_rule_url(@coverage_rule), params: { coverage_rule: { user_id: @coverage_rule.user_id } }
    assert_redirected_to coverage_rule_url(@coverage_rule)
  end

  test "should destroy coverage_rule" do
    assert_difference('CoverageRule.count', -1) do
      delete coverage_rule_url(@coverage_rule)
    end

    assert_redirected_to coverage_rules_url
  end
end
