require 'test_helper'

class ConversazioniControllerTest < ActionController::TestCase
  setup do
    @conversazione = conversazioni(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conversazioni)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conversazione" do
    assert_difference('Conversazione.count') do
      post :create, conversazione: { descrizione: @conversazione.descrizione }
    end

    assert_redirected_to conversazione_path(assigns(:conversazione))
  end

  test "should show conversazione" do
    get :show, id: @conversazione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conversazione
    assert_response :success
  end

  test "should update conversazione" do
    put :update, id: @conversazione, conversazione: { descrizione: @conversazione.descrizione }
    assert_redirected_to conversazione_path(assigns(:conversazione))
  end

  test "should destroy conversazione" do
    assert_difference('Conversazione.count', -1) do
      delete :destroy, id: @conversazione
    end

    assert_redirected_to conversazioni_path
  end
end
