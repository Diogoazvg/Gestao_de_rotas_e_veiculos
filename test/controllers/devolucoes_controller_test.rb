require 'test_helper'

class DevolucoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devolucao = devolucoes(:one)
  end

  test "should get index" do
    get devolucoes_url
    assert_response :success
  end

  test "should get new" do
    get new_devolucao_url
    assert_response :success
  end

  test "should create devolucao" do
    assert_difference('Devolucao.count') do
      post devolucoes_url, params: { devolucao: { combustivel: @devolucao.combustivel, data: @devolucao.data, entregou_notas: @devolucao.entregou_notas, quilometragem: @devolucao.quilometragem } }
    end

    assert_redirected_to devolucao_url(Devolucao.last)
  end

  test "should show devolucao" do
    get devolucao_url(@devolucao)
    assert_response :success
  end

  test "should get edit" do
    get edit_devolucao_url(@devolucao)
    assert_response :success
  end

  test "should update devolucao" do
    patch devolucao_url(@devolucao), params: { devolucao: { combustivel: @devolucao.combustivel, data: @devolucao.data, entregou_notas: @devolucao.entregou_notas, quilometragem: @devolucao.quilometragem } }
    assert_redirected_to devolucao_url(@devolucao)
  end

  test "should destroy devolucao" do
    assert_difference('Devolucao.count', -1) do
      delete devolucao_url(@devolucao)
    end

    assert_redirected_to devolucoes_url
  end
end
