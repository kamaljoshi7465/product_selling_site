require "application_system_test_case"

class IdproofsTest < ApplicationSystemTestCase
  setup do
    @idproof = idproofs(:one)
  end

  test "visiting the index" do
    visit idproofs_url
    assert_selector "h1", text: "Idproofs"
  end

  test "should create idproof" do
    visit idproofs_url
    click_on "New idproof"

    fill_in "Document", with: @idproof.document
    click_on "Create Idproof"

    assert_text "Idproof was successfully created"
    click_on "Back"
  end

  test "should update Idproof" do
    visit idproof_url(@idproof)
    click_on "Edit this idproof", match: :first

    fill_in "Document", with: @idproof.document
    click_on "Update Idproof"

    assert_text "Idproof was successfully updated"
    click_on "Back"
  end

  test "should destroy Idproof" do
    visit idproof_url(@idproof)
    click_on "Destroy this idproof", match: :first

    assert_text "Idproof was successfully destroyed"
  end
end
