require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest

    test "No login Redirect to login" do
        get root_url
        assert_response :redirect
    end

end