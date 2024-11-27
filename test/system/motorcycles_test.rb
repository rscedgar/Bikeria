require "application_system_test_case"

class MotorcyclesTest < ApplicationSystemTestCase
  setup do
    @motorcycle = motorcycles(:one)
  end

  test "visiting the index" do
    visit motorcycles_url
    assert_selector "h1", text: "Motorcycles"
  end

  test "should create motorcycle" do
    visit motorcycles_url
    click_on "New motorcycle"

    fill_in "Client", with: @motorcycle.client_id
    fill_in "Mileage", with: @motorcycle.mileage
    fill_in "Name", with: @motorcycle.name
    fill_in "Plate number", with: @motorcycle.plate_number
    fill_in "Service history", with: @motorcycle.service_history
    fill_in "Status", with: @motorcycle.status
    fill_in "Vin", with: @motorcycle.vin
    click_on "Create Motorcycle"

    assert_text "Motorcycle was successfully created"
    click_on "Back"
  end

  test "should update Motorcycle" do
    visit motorcycle_url(@motorcycle)
    click_on "Edit this motorcycle", match: :first

    fill_in "Client", with: @motorcycle.client_id
    fill_in "Mileage", with: @motorcycle.mileage
    fill_in "Name", with: @motorcycle.name
    fill_in "Plate number", with: @motorcycle.plate_number
    fill_in "Service history", with: @motorcycle.service_history
    fill_in "Status", with: @motorcycle.status
    fill_in "Vin", with: @motorcycle.vin
    click_on "Update Motorcycle"

    assert_text "Motorcycle was successfully updated"
    click_on "Back"
  end

  test "should destroy Motorcycle" do
    visit motorcycle_url(@motorcycle)
    click_on "Destroy this motorcycle", match: :first

    assert_text "Motorcycle was successfully destroyed"
  end
end
