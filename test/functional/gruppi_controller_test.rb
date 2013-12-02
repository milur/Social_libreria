require 'test_helper'

class GruppiControllerTest < ActionController::TestCase
  setup do
    @gruppo = gruppi(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gruppi)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gruppo" do
    assert_difference('Gruppo.count') do
      post :create, gruppo: { classe: @gruppo.classe, libro_id: @gruppo.libro_id, manifesto: @gruppo.manifesto, nome: @gruppo.nome, scuola_id: @gruppo.scuola_id }
    end

    assert_redirected_to gruppo_path(assigns(:gruppo))
  end

  test "should show gruppo" do
    get :show, id: @gruppo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gruppo
    assert_response :success
  end

  test "should update gruppo" do
    put :update, id: @gruppo, gruppo: { classe: @gruppo.classe, libro_id: @gruppo.libro_id, manifesto: @gruppo.manifesto, nome: @gruppo.nome, scuola_id: @gruppo.scuola_id }
    assert_redirected_to gruppo_path(assigns(:gruppo))
  end

  test "should destroy gruppo" do
    assert_difference('Gruppo.count', -1) do
      delete :destroy, id: @gruppo
    end

    assert_redirected_to gruppi_path
  end
end
