require "application_system_test_case"

class DevolucoesTest < ApplicationSystemTestCase
  setup do
    @devolucao = devolucoes(:one)
  end

  test "visiting the index" do
    visit devolucoes_url
    assert_selector "h1", text: "Devolucoes"
  end

  test "creating a Devolucao" do
    visit devolucoes_url
    click_on "New Devolucao"

    fill_in "Combustivel", with: @devolucao.combustivel
    fill_in "Data", with: @devolucao.data
    fill_in "Entregou Notas", with: @devolucao.entregou_notas
    fill_in "Quilometragem", with: @devolucao.quilometragem
    click_on "Create Devolucao"

    assert_text "Devolucao was successfully created"
    click_on "Back"
  end

  test "updating a Devolucao" do
    visit devolucoes_url
    click_on "Edit", match: :first

    fill_in "Combustivel", with: @devolucao.combustivel
    fill_in "Data", with: @devolucao.data
    fill_in "Entregou Notas", with: @devolucao.entregou_notas
    fill_in "Quilometragem", with: @devolucao.quilometragem
    click_on "Update Devolucao"

    assert_text "Devolucao was successfully updated"
    click_on "Back"
  end

  test "destroying a Devolucao" do
    visit devolucoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devolucao was successfully destroyed"
  end
end
