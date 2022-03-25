require "application_system_test_case"

class InstrumentsTest < ApplicationSystemTestCase
  setup do
    @instrument = instruments(:one)
  end

  test "visiting the index" do
    visit instruments_url
    assert_selector "h1", text: "Instruments"
  end

  test "should create instrument" do
    visit instruments_url
    click_on "New instrument"

    fill_in "Band", with: @instrument.band
    fill_in "Condition", with: @instrument.condition
    fill_in "Description", with: @instrument.description
    fill_in "Finish", with: @instrument.finish
    fill_in "Model", with: @instrument.model
    fill_in "Price", with: @instrument.price
    fill_in "Title", with: @instrument.title
    click_on "Create Instrument"

    assert_text "Instrument was successfully created"
    click_on "Back"
  end

  test "should update Instrument" do
    visit instrument_url(@instrument)
    click_on "Edit this instrument", match: :first

    fill_in "Band", with: @instrument.band
    fill_in "Condition", with: @instrument.condition
    fill_in "Description", with: @instrument.description
    fill_in "Finish", with: @instrument.finish
    fill_in "Model", with: @instrument.model
    fill_in "Price", with: @instrument.price
    fill_in "Title", with: @instrument.title
    click_on "Update Instrument"

    assert_text "Instrument was successfully updated"
    click_on "Back"
  end

  test "should destroy Instrument" do
    visit instrument_url(@instrument)
    click_on "Destroy this instrument", match: :first

    assert_text "Instrument was successfully destroyed"
  end
end
