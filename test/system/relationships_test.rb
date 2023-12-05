require "application_system_test_case"

class RelationshipsTest < ApplicationSystemTestCase
  setup do
    @relationship = relationships(:one)
  end

  test "visiting the index" do
    visit relationships_url
    assert_selector "h1", text: "Relationships"
  end

  test "should create relationship" do
    visit relationships_url
    click_on "New relationship"

    fill_in "Date of birth", with: @relationship.date_of_birth
    fill_in "Email", with: @relationship.email
    fill_in "First name", with: @relationship.first_name
    fill_in "Last name", with: @relationship.last_name
    fill_in "Middle initial", with: @relationship.middle_initial
    fill_in "Phone", with: @relationship.phone
    click_on "Create Relationship"

    assert_text "Relationship was successfully created"
    click_on "Back"
  end

  test "should update Relationship" do
    visit relationship_url(@relationship)
    click_on "Edit this relationship", match: :first

    fill_in "Date of birth", with: @relationship.date_of_birth
    fill_in "Email", with: @relationship.email
    fill_in "First name", with: @relationship.first_name
    fill_in "Last name", with: @relationship.last_name
    fill_in "Middle initial", with: @relationship.middle_initial
    fill_in "Phone", with: @relationship.phone
    click_on "Update Relationship"

    assert_text "Relationship was successfully updated"
    click_on "Back"
  end

  test "should destroy Relationship" do
    visit relationship_url(@relationship)
    click_on "Destroy this relationship", match: :first

    assert_text "Relationship was successfully destroyed"
  end
end
