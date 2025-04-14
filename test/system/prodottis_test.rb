require "application_system_test_case"

class ProdottisTest < ApplicationSystemTestCase
  setup do
    @prodotti = prodottis(:one)
  end

  test "visiting the index" do
    visit prodottis_url
    assert_selector "h1", text: "Prodottis"
  end

  test "should create prodotti" do
    visit prodottis_url
    click_on "New prodotti"

    fill_in "Descrizione", with: @prodotti.descrizione
    fill_in "Prezzo", with: @prodotti.prezzo
    fill_in "Titolo", with: @prodotti.titolo
    click_on "Create Prodotti"

    assert_text "Prodotti was successfully created"
    click_on "Back"
  end

  test "should update Prodotti" do
    visit prodotti_url(@prodotti)
    click_on "Edit this prodotti", match: :first

    fill_in "Descrizione", with: @prodotti.descrizione
    fill_in "Prezzo", with: @prodotti.prezzo
    fill_in "Titolo", with: @prodotti.titolo
    click_on "Update Prodotti"

    assert_text "Prodotti was successfully updated"
    click_on "Back"
  end

  test "should destroy Prodotti" do
    visit prodotti_url(@prodotti)
    click_on "Destroy this prodotti", match: :first

    assert_text "Prodotti was successfully destroyed"
  end
end
