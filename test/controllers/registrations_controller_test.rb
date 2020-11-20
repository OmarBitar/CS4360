require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest

    test "No login Redirect to login" do
        get root_url
        assert_response :redirect
    end

    test "Login Screen" do
        get "/users/sign_in"
        assert_response :success
    end

    test "Sign up" do
        get "/users/sign_up"
        assert_response :success
    end

    #Views test
    test "Email field" do
        get "/users/sign_in"
        assert_select "input#user_email", 1
    end

    test "Password field" do
        get "/users/sign_in"
        assert_select "input#user_password", 1
    end

    test "Sign up link" do
        get "/users/sign_in"
        assert_select "a", {count: 1, text: "Sign up"}
    end

end