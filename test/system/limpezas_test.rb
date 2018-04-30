require "application_system_test_case"

class LimpezasTest < ApplicationSystemTestCase
  setup do
    @limpeza = limpezas(:one)
  end

  test "visiting the index" do
    visit limpezas_url
    assert_selector "h1", text: "Limpezas"
  end

  test "creating a Limpeza" do
    visit limpezas_url
    click_on "New Limpeza"

    fill_in "Data", with: @limpeza.data
    fill_in "Valor", with: @limpeza.valor
    click_on "Create Limpeza"

    assert_text "Limpeza was successfully created"
    click_on "Back"
  end

  test "updating a Limpeza" do
    visit limpezas_url
    click_on "Edit", match: :first

    fill_in "Data", with: @limpeza.data
    fill_in "Valor", with: @limpeza.valor
    click_on "Update Limpeza"

    assert_text "Limpeza was successfully updated"
    click_on "Back"
  end

  test "destroying a Limpeza" do
    visit limpezas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Limpeza was successfully destroyed"
  end
end
