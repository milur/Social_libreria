require 'test_helper'

class PartecipantesControllerTest < ActionController::TestCase
  setup do
    @partecipante = partecipantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partecipantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partecipante" do
    assert_difference('Partecipante.count') do
      post :create, partecipante: { conversazione_id: @partecipante.conversazione_id, utente_id: @partecipante.utente_id }
    end

    assert_redirected_to partecipante_path(assigns(:partecipante))
  end

  test "should show partecipante" do
    get :show, id: @partecipante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partecipante
    assert_response :success
  end

  test "should update partecipante" do
    put :update, id: @partecipante, partecipante: { conversazione_id: @partecipante.conversazione_id, utente_id: @partecipante.utente_id }
    assert_redirected_to partecipante_path(assigns(:partecipante))
  end

  test "should destroy partecipante" do
    assert_difference('Partecipante.count', -1) do
      delete :destroy, id: @partecipante
    end

    assert_redirected_to partecipantes_path
  end
end
