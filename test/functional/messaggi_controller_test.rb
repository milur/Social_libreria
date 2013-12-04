require 'test_helper'

class MessaggiControllerTest < ActionController::TestCase
  setup do
    @messaggio = messaggi(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messaggi)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messaggio" do
    assert_difference('Messaggio.count') do
      post :create, messaggio: { allegato_id: @messaggio.allegato_id, conversazione_id: @messaggio.conversazione_id, testo: @messaggio.testo, utente_id: @messaggio.utente_id }
    end

    assert_redirected_to messaggio_path(assigns(:messaggio))
  end

  test "should show messaggio" do
    get :show, id: @messaggio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messaggio
    assert_response :success
  end

  test "should update messaggio" do
    put :update, id: @messaggio, messaggio: { allegato_id: @messaggio.allegato_id, conversazione_id: @messaggio.conversazione_id, testo: @messaggio.testo, utente_id: @messaggio.utente_id }
    assert_redirected_to messaggio_path(assigns(:messaggio))
  end

  test "should destroy messaggio" do
    assert_difference('Messaggio.count', -1) do
      delete :destroy, id: @messaggio
    end

    assert_redirected_to messaggi_path
  end
end
