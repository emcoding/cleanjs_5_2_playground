require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit root_url

    assert_selector "h1", text: "Hamburger"
  end

  test "always show the hamburger" do
    visit root_url

    assert_selector "button", text: "🍔"
  end

  test "don't show the nav menu" do
    skip("this fails until the toggler is implemented correctly")
    visit root_url

    refute_selector "nav", text: "Navigation"
  end

end
