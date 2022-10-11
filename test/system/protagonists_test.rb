require "application_system_test_case"

class ProtagonistsTest < ApplicationSystemTestCase
  setup do
    @protagonist = protagonists(:one)
  end

  test "visiting the index" do
    visit protagonists_url
    assert_selector "h1", text: "Protagonists"
  end

  test "creating a Protagonist" do
    visit protagonists_url
    click_on "New Protagonist"

    fill_in "Department", with: @protagonist.department
    fill_in "Edifice", with: @protagonist.edifice
    fill_in "Homeaddress", with: @protagonist.homeAddress
    fill_in "Homephone", with: @protagonist.homePhone
    fill_in "Profession", with: @protagonist.profession
    fill_in "University", with: @protagonist.university
    fill_in "Workaddress", with: @protagonist.workAddress
    fill_in "Workphone", with: @protagonist.workPhone
    click_on "Create Protagonist"

    assert_text "Protagonist was successfully created"
    click_on "Back"
  end

  test "updating a Protagonist" do
    visit protagonists_url
    click_on "Edit", match: :first

    fill_in "Department", with: @protagonist.department
    fill_in "Edifice", with: @protagonist.edifice
    fill_in "Homeaddress", with: @protagonist.homeAddress
    fill_in "Homephone", with: @protagonist.homePhone
    fill_in "Profession", with: @protagonist.profession
    fill_in "University", with: @protagonist.university
    fill_in "Workaddress", with: @protagonist.workAddress
    fill_in "Workphone", with: @protagonist.workPhone
    click_on "Update Protagonist"

    assert_text "Protagonist was successfully updated"
    click_on "Back"
  end

  test "destroying a Protagonist" do
    visit protagonists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Protagonist was successfully destroyed"
  end
end
