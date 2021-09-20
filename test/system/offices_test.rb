require "application_system_test_case"

class OfficesTest < ApplicationSystemTestCase
  setup do
    @office = offices(:one)
  end

  test "visiting the index" do
    visit offices_url
    assert_selector "h1", text: "Offices"
  end

  test "should create Office" do
    visit offices_url
    click_on "New Office"

    fill_in "Building name", with: @office.building_name
    fill_in "Room number", with: @office.room_number
    click_on "Create Office"

    assert_text "Office was successfully created"
    click_on "Back"
  end

  test "should update Office" do
    visit offices_url
    click_on "Edit", match: :first

    fill_in "Building name", with: @office.building_name
    fill_in "Room number", with: @office.room_number
    click_on "Update Office"

    assert_text "Office was successfully updated"
    click_on "Back"
  end

  test "should destroy Office" do
    visit offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Office was successfully destroyed"
  end
end
