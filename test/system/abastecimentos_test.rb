require "application_system_test_case"

class AbastecimentosTest < ApplicationSystemTestCase
  setup do
    @abastecimento = abastecimentos(:one)
  end

  test "visiting the index" do
    visit abastecimentos_url
    assert_selector "h1", text: "Abastecimentos"
  end

  test "creating a Abastecimento" do
    visit abastecimentos_url
    click_on "New Abastecimento"

    fill_in "Data", with: @abastecimento.data
    fill_in "Litros", with: @abastecimento.litros
    fill_in "Valor", with: @abastecimento.valor
    click_on "Create Abastecimento"

    assert_text "Abastecimento was successfully created"
    click_on "Back"
  end

  test "updating a Abastecimento" do
    visit abastecimentos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @abastecimento.data
    fill_in "Litros", with: @abastecimento.litros
    fill_in "Valor", with: @abastecimento.valor
    click_on "Update Abastecimento"

    assert_text "Abastecimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Abastecimento" do
    visit abastecimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abastecimento was successfully destroyed"
  end
end
