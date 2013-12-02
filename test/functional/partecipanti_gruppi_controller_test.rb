require 'test_helper'

class PartecipantiGruppiControllerTest < ActionController::TestCase
  setup do
    @partecipanti_gruppo = partecipanti_gruppi(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partecipanti_gruppi)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partecipanti_gruppo" do
    assert_difference('PartecipantiGruppo.count') do
      post :create, partecipanti_gruppo: { gruppo_id: @partecipanti_gruppo.gruppo_id, utente_id: @partecipanti_gruppo.utente_id }
    end

    assert_redirected_to partecipanti_gruppo_path(assigns(:partecipanti_gruppo))
  end

  test "should show partecipanti_gruppo" do
    get :show, id: @partecipanti_gruppo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partecipanti_gruppo
    assert_response :success
  end

  test "should update partecipanti_gruppo" do
    put :update, id: @partecipanti_gruppo, partecipanti_gruppo: { gruppo_id: @partecipanti_gruppo.gruppo_id, utente_id: @partecipanti_gruppo.utente_id }
    assert_redirected_to partecipanti_gruppo_path(assigns(:partecipanti_gruppo))
  end

  test "should destroy partecipanti_gruppo" do
    assert_difference('PartecipantiGruppo.count', -1) do
      delete :destroy, id: @partecipanti_gruppo
    end

    assert_redirected_to partecipanti_gruppi_path
  end
end
