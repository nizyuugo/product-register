require "application_system_test_case"

class PorductsTest < ApplicationSystemTestCase
  setup do
    @porduct = porducts(:one)
  end

  test "visiting the index" do
    visit porducts_url
    assert_selector "h1", text: "Porducts"
  end

  test "creating a Porduct" do
    visit porducts_url
    click_on "New Porduct"

    fill_in "Name", with: @porduct.name
    fill_in "Price", with: @porduct.price
    fill_in "Vendor", with: @porduct.vendor
    click_on "Create Porduct"

    assert_text "Porduct was successfully created"
    click_on "Back"
  end

  test "updating a Porduct" do
    visit porducts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @porduct.name
    fill_in "Price", with: @porduct.price
    fill_in "Vendor", with: @porduct.vendor
    click_on "Update Porduct"

    assert_text "Porduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Porduct" do
    visit porducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Porduct was successfully destroyed"
  end
end
