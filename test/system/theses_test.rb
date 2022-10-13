require "application_system_test_case"

class ThesesTest < ApplicationSystemTestCase
  setup do
    @thesis = theses(:one)
  end

  test "visiting the index" do
    visit theses_url
    assert_selector "h1", text: "Theses"
  end

  test "creating a Thesis" do
    visit theses_url
    click_on "New Thesis"

    fill_in "Description", with: @thesis.description
    fill_in "Title", with: @thesis.title
    fill_in "Year", with: @thesis.year
    click_on "Create Thesis"

    assert_text "Thesis was successfully created"
    click_on "Back"
  end

  test "updating a Thesis" do
    visit theses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @thesis.description
    fill_in "Title", with: @thesis.title
    fill_in "Year", with: @thesis.year
    click_on "Update Thesis"

    assert_text "Thesis was successfully updated"
    click_on "Back"
  end

  test "destroying a Thesis" do
    visit theses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thesis was successfully destroyed"
  end
end
