require "application_system_test_case"

class CoverageRulesTest < ApplicationSystemTestCase
  setup do
    @coverage_rule = coverage_rules(:one)
  end

  test "visiting the index" do
    visit coverage_rules_url
    assert_selector "h1", text: "Coverage Rules"
  end

  test "creating a Coverage rule" do
    visit coverage_rules_url
    click_on "New Coverage Rule"

    click_on "Create Coverage rule"

    assert_text "Coverage rule was successfully created"
    click_on "Back"
  end

  test "updating a Coverage rule" do
    visit coverage_rules_url
    click_on "Edit", match: :first

    click_on "Update Coverage rule"

    assert_text "Coverage rule was successfully updated"
    click_on "Back"
  end

  test "destroying a Coverage rule" do
    visit coverage_rules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coverage rule was successfully destroyed"
  end
end
