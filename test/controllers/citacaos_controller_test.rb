require 'test_helper'

class CitacaosControllerTest < ActionController::TestCase
  setup do
    @citacao = citacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citacao" do
    assert_difference('Citacao.count') do
      post :create, citacao: { livro_id: @citacao.livro_id, pagina_inicial: @citacao.pagina_inicial, palavras_chave: @citacao.palavras_chave, trecho: @citacao.trecho }
    end

    assert_redirected_to citacao_path(assigns(:citacao))
  end

  test "should show citacao" do
    get :show, id: @citacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citacao
    assert_response :success
  end

  test "should update citacao" do
    patch :update, id: @citacao, citacao: { livro_id: @citacao.livro_id, pagina_inicial: @citacao.pagina_inicial, palavras_chave: @citacao.palavras_chave, trecho: @citacao.trecho }
    assert_redirected_to citacao_path(assigns(:citacao))
  end

  test "should destroy citacao" do
    assert_difference('Citacao.count', -1) do
      delete :destroy, id: @citacao
    end

    assert_redirected_to citacaos_path
  end
end
