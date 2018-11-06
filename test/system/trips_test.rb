require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Client", with: @trip.client_id
    fill_in "Datetime", with: @trip.datetime
    fill_in "Destiny", with: @trip.destiny
    fill_in "Driver", with: @trip.driver_id
    fill_in "Duration", with: @trip.duration
    fill_in "Origin", with: @trip.origin
    fill_in "Rate", with: @trip.rate
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Client", with: @trip.client_id
    fill_in "Datetime", with: @trip.datetime
    fill_in "Destiny", with: @trip.destiny
    fill_in "Driver", with: @trip.driver_id
    fill_in "Duration", with: @trip.duration
    fill_in "Origin", with: @trip.origin
    fill_in "Rate", with: @trip.rate
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
