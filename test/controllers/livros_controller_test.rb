require 'test_helper'

class LivrosControllerTest < ActionController::TestCase
  setup do
    @livro = livros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livro" do
    assert_difference('Livro.count') do
      post :create, livro: { ano_da_publicacao: @livro.ano_da_publicacao, autores: @livro.autores, cidade: @livro.cidade, edicao: @livro.edicao, editora: @livro.editora, palavras_chave: @livro.palavras_chave, titulo: @livro.titulo }
    end

    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should show livro" do
    get :show, id: @livro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livro
    assert_response :success
  end

  test "should update livro" do
    patch :update, id: @livro, livro: { ano_da_publicacao: @livro.ano_da_publicacao, autores: @livro.autores, cidade: @livro.cidade, edicao: @livro.edicao, editora: @livro.editora, palavras_chave: @livro.palavras_chave, titulo: @livro.titulo }
    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should destroy livro" do
    assert_difference('Livro.count', -1) do
      delete :destroy, id: @livro
    end

    assert_redirected_to livros_path
  end
end
