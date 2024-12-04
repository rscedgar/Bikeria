require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "should create address" do
    visit addresses_url
    click_on "New address"

    fill_in "Address type", with: @address.address_type
    fill_in "City", with: @address.city
    fill_in "Client", with: @address.client_id
    fill_in "Ext number", with: @address.ext_number
    fill_in "Int number", with: @address.int_number
    fill_in "Municipality", with: @address.municipality
    fill_in "Postal code", with: @address.postal_code
    check "Status" if @address.status
    fill_in "Street", with: @address.street
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "should update Address" do
    visit address_url(@address)
    click_on "Edit this address", match: :first

    fill_in "Address type", with: @address.address_type
    fill_in "City", with: @address.city
    fill_in "Client", with: @address.client_id
    fill_in "Ext number", with: @address.ext_number
    fill_in "Int number", with: @address.int_number
    fill_in "Municipality", with: @address.municipality
    fill_in "Postal code", with: @address.postal_code
    check "Status" if @address.status
    fill_in "Street", with: @address.street
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "should destroy Address" do
    visit address_url(@address)
    click_on "Destroy this address", match: :first

    assert_text "Address was successfully destroyed"
  end
end
