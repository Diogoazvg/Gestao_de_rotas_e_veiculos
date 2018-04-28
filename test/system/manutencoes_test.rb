require "application_system_test_case"

class ManutencoesTest < ApplicationSystemTestCase
  setup do
    @manutencao = manutencoes(:one)
  end

  test "visiting the index" do
    visit manutencoes_url
    assert_selector "h1", text: "Manutencoes"
  end

  test "creating a Manutencao" do
    visit manutencoes_url
    click_on "New Manutencao"

    fill_in "Data", with: @manutencao.data
    fill_in "Detalhes", with: @manutencao.detalhes
    fill_in "Previsao", with: @manutencao.previsao
    fill_in "Valor", with: @manutencao.valor
    click_on "Create Manutencao"

    assert_text "Manutencao was successfully created"
    click_on "Back"
  end

  test "updating a Manutencao" do
    visit manutencoes_url
    click_on "Edit", match: :first

    fill_in "Data", with: @manutencao.data
    fill_in "Detalhes", with: @manutencao.detalhes
    fill_in "Previsao", with: @manutencao.previsao
    fill_in "Valor", with: @manutencao.valor
    click_on "Update Manutencao"

    assert_text "Manutencao was successfully updated"
    click_on "Back"
  end

  test "destroying a Manutencao" do
    visit manutencoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manutencao was successfully destroyed"
  end
end
