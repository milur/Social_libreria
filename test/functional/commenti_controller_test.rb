require 'test_helper'

class CommentiControllerTest < ActionController::TestCase
  setup do
    @commento = commenti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commenti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commento" do
    assert_difference('Commento.count') do
      post :create, commento: { allegato_id: @commento.allegato_id, attivita_id: @commento.attivita_id, testo: @commento.testo, utente_id: @commento.utente_id }
    end

    assert_redirected_to commento_path(assigns(:commento))
  end

  test "should show commento" do
    get :show, id: @commento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commento
    assert_response :success
  end

  test "should update commento" do
    put :update, id: @commento, commento: { allegato_id: @commento.allegato_id, attivita_id: @commento.attivita_id, testo: @commento.testo, utente_id: @commento.utente_id }
    assert_redirected_to commento_path(assigns(:commento))
  end

  test "should destroy commento" do
    assert_difference('Commento.count', -1) do
      delete :destroy, id: @commento
    end

    assert_redirected_to commenti_path
  end
end
