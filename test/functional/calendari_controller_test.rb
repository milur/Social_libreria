require 'test_helper'

class CalendariControllerTest < ActionController::TestCase
  setup do
    @calendario = calendari(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendari)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calendario" do
    assert_difference('Calendario.count') do
      post :create, calendario: { descrizione: @calendario.descrizione, gruppo_id: @calendario.gruppo_id, utente_id: @calendario.utente_id }
    end

    assert_redirected_to calendario_path(assigns(:calendario))
  end

  test "should show calendario" do
    get :show, id: @calendario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calendario
    assert_response :success
  end

  test "should update calendario" do
    put :update, id: @calendario, calendario: { descrizione: @calendario.descrizione, gruppo_id: @calendario.gruppo_id, utente_id: @calendario.utente_id }
    assert_redirected_to calendario_path(assigns(:calendario))
  end

  test "should destroy calendario" do
    assert_difference('Calendario.count', -1) do
      delete :destroy, id: @calendario
    end

    assert_redirected_to calendari_path
  end
end
